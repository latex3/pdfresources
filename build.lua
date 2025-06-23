#!/usr/bin/env texlua
packageversion="0.96s"
packagedate="2025-06-23"

local luatexstatus = status.list()

-- Build script for "LaTeX PDF management testphase bundle" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfmanagement-testphase"

typesetexe="pdflatex"
installfiles = {"*.sty","*.cls","*.def","*.lua","*.ltx"}

if options["target"] == "ctan" then
  sourcefiles =  {"*.dtx","*.ins",
                "firstaid/xcolor-patches-tmp-ltx.sty",
                "firstaid/color-ltx.sty",
                "firstaid/colorspace-patches-tmp-ltx.sty",
                "lualinksplit.lua"
                }
else
 sourcefiles =  {"*.dtx","*.ins",
                "firstaid/xcolor-patches-tmp-ltx.sty",
                "firstaid/color-ltx.sty",
                "firstaid/colorspace-patches-tmp-ltx.sty",
                "newpackages/new-bookmark.sty",
                "newpackages/bkm-generic.def",
                "newpackages/new-attachfile.sty",
                "newpackages/atfi-generic.def",
                "lualinksplit.lua"
                }
end

checkruns = 4
recordstatus=true


  specialformats = specialformats or {}
  specialformats["latex"] = specialformats["latex"] or
   {
    luatex     = {binary="luahbtex",format = "lualatex-dev"},
    pdftex     = {format = "pdflatex-dev"},
    xetex     = {format = "xelatex-dev"},
    latexdvips = {binary="latex",format = "latex-dev"}
    }

-- to try without dev-format
--   specialformats["latex"] = specialformats["latex"] or
--    {
--     luatex     = {binary="luahbtex",format = "lualatex"},
--     pdftex     = {format = "pdflatex"},
--     xetex     = {format = "xelatex"},
--     latexdvips = {binary="latex",format = "latex"}
--     }

-- packtdszip = true
checkengines = {"pdftex","luatex","xetex"}


if os.type == "windows" then
  checkconfigs = {"build", -- luatex, pdftex, xetex
                  "config-noxetex", --pdftex + luatex (std)
                  "config-luatex",  -- luatex
                  "config-dvips",   -- latex + dvips
                  "config-pdftex",  -- pdftex
                  "config-xetex"    -- xetex
                  }
else 
-- exclude dvips tests if not on windows
    checkconfigs = {"build", -- luatex, pdftex, xetex
                  "config-noxetex", --pdftex + luatex (std)
                  "config-luatex",  -- luatex
                  -- "config-dvips",   -- latex + dvips
                  "config-pdftex",  -- pdftex
                  "config-xetex"    -- xetex
                  }
-- exclude only record status works again                  
excludetests = {"show","catalog-remove"}                   
end                

-- tagging
tagfiles = {
            "*dtx",
            "firstaid/*.sty",
            "README.md",
            "CHANGELOG.md"
           }

function update_tag (file,content,tagname,tagdate)
 tagdate = string.gsub (packagedate,"-", "/")
 if string.match (file, "l3backend%-testphase.dtx" ) then
  content = string.gsub (content,
                          "{%d%d%d%d%-%d%d%-%d%d}",
                          "{".. packagedate .. "}")
  content = string.gsub (content,
                         "date{Version %d%.%d+%a, released %d%d%d%d%-%d%d%-%d%d",
                         "date{Version "..packageversion..", released ".. packagedate)
  content = string.gsub (content,
                         "Copyright %(C%) (%d%d%d%d)%-%d%d%d%d",
                         "Copyright (C) %1-"..os.date("%Y"))
  return content
  elseif string.match (file, "%.dtx$" ) then
   content = string.gsub (content,
                         "\\ProvidesExplPackage{(.-)}{.-}{.-}",
                         "\\ProvidesExplPackage{%1}{" .. packagedate.."}{"..packageversion .. "}")
    content = string.gsub (content,
                         "\\ProvidesExplFile{(.-)}{.-}{.-}",
                         "\\ProvidesExplFile{%1}{" .. packagedate.."}{"..packageversion .. "}")

  content = string.gsub (content,
                          "\\ProvidesFile{(.-)}%[%d%d%d%d%-%d%d%-%d%d v%d%.%d+%a",
                          "\\ProvidesFile{%1}["..packagedate.." v"..packageversion)
  content = string.gsub (content,
                         "date{Version %d%.%d+%a, released %d%d%d%d%-%d%d%-%d%d",
                         "date{Version "..packageversion..", released ".. packagedate)
  content = string.gsub (content,
                         "Copyright %(C%) (%d%d%d%d)%-%d%d%d%d",
                         "Copyright (C) %1-"..os.date("%Y"))

  return content
  elseif string.match (file, "%.sty$" ) then
   content = string.gsub (content,
                          "\\ProvidesPackage{(.-)}%[%d%d%d%d%-%d%d%-%d%d v%d%.%d+%a",
                          "\\ProvidesPackage{%1}["..packagedate.." v"..packageversion)
   content = string.gsub (content,
                         "\\ProvidesExplPackage{(.-)}{.-}{.-}",
                         "\\ProvidesExplPackage{%1}{" .. packagedate.."}{"..packageversion .. "}")
  return content
 elseif string.match (file, "^README.md$") then
   content = string.gsub (content,
                         "Version: %d%.%d+%a, %d%d%d%d%-%d%d%-%d%d",
                         "Version: " .. packageversion .. ", " .. packagedate )
   content = string.gsub (content,
                         "(%d%d%d%d)%-%d%d%d%d",
                         "%1-"..os.date("%Y"))
   return content
 elseif string.match (file, "^CHANGELOG.md$") then
   content = string.gsub (content,
                         "%[Unreleased%]",
                         "[".. packagedate.."]" )
   return content
 end
 return content
 end
