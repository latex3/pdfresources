--  This is file lualinksplit.lua

--  Copyright (C) 2025 Marcel Krüger, The LaTeX Project
--  
--  It may be distributed and/or modified under the conditions of
--  the LaTeX Project Public License (LPPL), either version 1.3c of
--  this license or (at your option) any later version.  The latest
--  version of this license is in the file:
--  
--     https://www.latex-project.org/lppl.txt
--  
--  This file is part of the "LaTeX PDF management testphase bundle" (The Work in LPPL)
--  and all files in that bundle must be distributed together.

--[[
This implements splitted links with lua. To disable the code remove
'linksplit' from the 'pre_shipout_filter' callback.
--]]

local traverse = node.traverse
local traverse_list = node.traverse_list
local copy = node.copy
local node_new = node.new
local free = node.free
local rangedimensions = node.rangedimensions
local remove = node.remove
local insert_before = node.insert_before
local insert_after = node.insert_after

local hlist, vlist, whatsit = node.id'hlist', node.id'vlist', node.id'whatsit'

local pdf_start_link, pdf_end_link, pdf_link_state, user_defined = node.subtype'pdf_start_link', node.subtype'pdf_end_link', node.subtype'pdf_link_state', node.subtype'user_defined'
local pdf_link_adjust_level = luatexbase.new_whatsit'pdf_link_adjust_level'

local get_link_state_value, set_link_state_value do
  local pdf_refobj = node.subtype'pdf_refobj'
  function get_link_state_value(n)
    n.subtype = pdf_refobj
    local value = n.objnum
    n.subtype = pdf_link_state
    return value
  end
  function set_link_state_value(n, value)
    n.subtype = pdf_refobj
    n.objnum = value
    n.subtype = pdf_link_state
  end
end

local vmode do
  local modevalues = tex.getmodevalues()
  for k, v in pairs(modevalues) do
    if v == 'vertical' then
      vmode = k
      break
    end
  end
  assert(vmode)
end

local whatsits = node.whatsits()
local properties = node.get_properties_table()
local call_callback = luatexbase.call_callback

local function start_level(linkstacks, linkstate, level, head)
  local stack = linkstacks[linkstate]
  if not stack then return head end

  local new_head = head
  for i = 1, #stack do
    local link = stack[i]
    if link.level == level then
      local start_link = copy(link.node_template)
      new_head = insert_before(new_head, head, start_link)
      properties[start_link] = {linksplit__artificial = true}
      link.node, link.initial = start_link, false
      start_link.objnum = pdf.reserveobj'annot'
    end
  end
  return new_head
end

local function end_level(linkstacks, linkstate, level, head, outer)
  local stack = linkstacks[linkstate]
  if not stack then return end

  for i = 1, #stack do
    local link = stack[i]
    if link.level == level then
      local start_link = link.node
      if start_link then
        local end_link = node_new(whatsit, pdf_end_link)
        end_link.attr = start_link.attr
        -- We end the link directly after it's start.
        -- The real dimensions are given in the start node.
        insert_after(start_link, start_link, end_link)
        properties[end_link] = {linksplit__artificial = true}
        link.node = nil
        -- Now we need to determine the link width.
        -- We currently disregard bidi and instead just use the box width
        -- minus the width of existing content.
        local pre_link_width = rangedimensions(outer, head, start_link)
        start_link.width = outer.width - pre_link_width

        call_callback('linksplit', start_link, link.initial and 'initial' or 'middle')
      end
    end
  end
end

local function push_link(linkstacks, linkstate, level, head, node, direction)
  local stack = linkstacks[linkstate]
  if not stack then
    stack = {}
    linkstacks[linkstate] = stack
  end
  stack[#stack + 1] = {
    node = node,
    node_template = copy(node),
    level = level,
    initial = true,
  }
  return head
end

local function pop_link(linkstacks, linkstate, level, head, node)
  local stack = linkstacks[linkstate]
  local link_count = stack and #stack
  if not link_count or link_count == 0 then
    tex.error("No link here to end")
    head = remove(head, node)
    free(node)
  else
    local top = stack[link_count]
    if top.level ~= level then
      head = remove(head, node)
      if top.node then
        insert_after(top.node, top.node, node)
      else
        free(node)
      end
      tex.error(string.format("Link startet on level %i ended on level %i", top.level, level))
    end
    free(top.node_template)
    stack[link_count] = nil

    call_callback('linksplit', top.node, top.initial and 'isolated' or 'final')
  end
  return head
end

local process_vlist, process_hlist

function process_hlist(head, level, linkstacks, linkstate, outer)
  level = level + 1
  local real_head = head
  local used_linkstate = linkstate or linkstacks.linkstate
  real_head = start_level(linkstacks, used_linkstate, level, head)
  -- Here we iterate first before we process the previous node.
  -- This allows a node to remove itself during processing without
  -- breaking the iteration.
  local iter, state, n = traverse(head)
  local next_n, next_id, next_sub = iter(state, n)
  while next_n do
    local n, id, sub = next_n, next_id, next_sub
    next_n, next_id, next_sub = iter(state, n)
    if id == vlist then
      process_vlist(n.list, level, linkstacks, linkstate)
    elseif id == hlist then
      n.list = process_hlist(n.list, level, linkstacks, linkstate, n)
    elseif id == whatsit then
      if sub == pdf_start_link then
        real_head = push_link(linkstacks, used_linkstate, level, real_head, n, 'TRT') -- FIXME: Direction
      elseif sub == pdf_end_link then
        real_head = pop_link(linkstacks, used_linkstate, level, real_head, n)
      elseif sub == pdf_link_state then
        texio.write_nl('WARNING: linkstate in hbox ignored')
      elseif sub == user_defined then
        if n.user_id == pdf_link_adjust_level then
          texio.write_nl('WARNING: pdf_link_adjust_level in hbox ignored')
        end
      end
    end
  end
  end_level(linkstacks, used_linkstate, level, real_head, outer)
  return real_head
end

function process_vlist(head, level, linkstacks, linkstate)
  level = level + 1
  for n, id, sub in traverse(head) do
    if id == vlist then
      process_vlist(n.list, level, linkstacks, linkstate)
    elseif id == hlist then
      n.list = process_hlist(n.list, level, linkstacks, linkstate, n)
    elseif id == whatsit then
      if sub == pdf_link_state then
        local value = get_link_state_value(n)
        if value < 0 then
          linkstate = -value
        else
          linkstacks.linkstate, linkstate = value, nil
        end
      elseif sub == pdf_start_link then
        tex.error("'startlink' ended up in vlist")
      elseif sub == pdf_end_link then
        tex.error("'endlink' ended up in vlist")
      elseif sub == user_defined then
        if n.user_id == pdf_link_adjust_level then
          level = level + n.value
        end
      end
    end
  end
  return true
end

local linkstacks = {
  linkstate = 0,
}

luatexbase.create_callback('linksplit', 'simple')
luatexbase.add_to_callback('pre_shipout_filter', function(head)
  process_vlist(head, 0, linkstacks, nil)
  return true
end, 'linksplit')

local pdflinkadjustlevel_func = luatexbase.new_luafunction'pdflinkadjustlevel'
token.set_lua('pdflinkadjustlevel', pdflinkadjustlevel_func, 'protected')
lua.get_functions_table()[pdflinkadjustlevel_func] = function()
  local mode = tex.nest.top.mode
  if mode ~= vmode and -mode ~= vmode then
    tex.error("\\pdflinkadjustlevel is only allowed in vmode")
    return
  end
  local value = token.scan_int()
  local n = node_new(whatsit, user_defined)
  n.user_id, n.type, n.value = pdf_link_adjust_level, 100, value
  node.write(n)
end
