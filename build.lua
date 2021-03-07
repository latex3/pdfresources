#!/usr/bin/env texlua

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

