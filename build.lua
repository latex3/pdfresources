#!/usr/bin/env texlua
packageversion="0.95c"
packagedate="2021-03-17"

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
    latexdvips = {binary="latex.exe",format = "latex-dev"}
    }

-- to try without dev-format
--   specialformats["latex"] = specialformats["latex"] or 
--    {
--     luatex     = {binary="luahbtex",format = "lualatex"},
--     pdftex     = {format = "pdflatex"},
--     xetex     = {format = "xelatex"},
--     latexdvips = {binary="latex.exe",format = "latex"}
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
 if string.match (file, "%.dty$" ) then
  content = string.gsub (content,
                         "\\ProvidesExplPackage {(.-)} {.-} {.-}",
                         "\\ProvidesExplPackage {%1} {" .. tagdate.."} {"..packageversion .. "}")
  content = string.gsub (content,
                         "\\ProvidesExplFile {(.-)} {.-} {.-}",
                         "\\ProvidesExplFile {%1} {" .. tagdate.."} {"..packageversion .. "}")
  content = string.gsub (content,
                         '(version%s*=%s*")%d%.%d+(",%s*--TAGVERSION)',
                         "%1"..packageversion.."%2")
  content = string.gsub (content,
                         '(date%s*=%s*")%d%d%d%d%-%d%d%-%d%d(",%s*--TAGDATE)',
                         "%1"..packagedate.."%2")
  return content
  elseif string.match (file, "%.sty$" ) then
   content = string.gsub (content,
                          "\\ProvidesPackage{(.-)}%[%d%d%d%d%-%d%d%-%d%d %d%.%d+%a",
                          "\\ProvidesPackage{%1}%["..packagedate.." "..packageversion)
  content = string.gsub (content,
                         "\\ProvidesExplPackage{(.-)} {.-} {.-}",
                         "\\ProvidesExplPackage{%1} {" .. packagedate.."} {"..packageversion .. "}")
  return content  
 elseif string.match (file, "^README.md$") then
   content = string.gsub (content,
                         "Version: %d%.%d+%a, %d%d%d%d%-%d%d%-%d%d",
                         "Version: " .. packageversion .. ", " .. packagedate )
   return content
 end
 return content
 end
