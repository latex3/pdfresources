#!/usr/bin/env texlua
packageversion="0.95f"
packagedate="2021-06-29"

-- Build script for "LaTeX PDF management testphase bundle" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfmanagement-testphase"

typesetexe="pdflatex-dev"
installfiles = {"*.sty","*.cls","*.def","*.lua","*.ltx"}

if options["target"] == "ctan" then
  sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "firstaid/transparent-ltx.sty",
                "firstaid/hyperxmp-patches-tmp-ltx.sty",
                "firstaid/pdflscape-ltx.sty",
                "firstaid/xcolor-patches-tmp-ltx.sty",
                "firstaid/color-ltx.sty",
                 }
else
 sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "firstaid/transparent-ltx.sty",
                "firstaid/hyperxmp-patches-tmp-ltx.sty",
                "firstaid/pdflscape-ltx.sty",
                "firstaid/xcolor-patches-tmp-ltx.sty",
                "firstaid/color-ltx.sty",
                "support/pdfmanagement-regressiontest.sty",
                "newpackages/new-bookmark.sty",
                "newpackages/bkm-generic.def",
                "newpackages/new-attachfile.sty",
                "newpackages/atfi-generic.def",
                }
end

checkruns = 3


  -- tl2020
  print("TL2020 or later")

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
checkengines = {"luatex","pdftex","xetex"}


checkconfigs = {"build",
                "config-noxetex",
                "config-luatex",
                "config-dvips"
                }

-- tagging
tagfiles = {
            "*dtx",
            "firstaid/*.sty",
            "README.md"
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
   return content
 end
 return content
 end
