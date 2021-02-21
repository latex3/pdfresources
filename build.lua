#!/usr/bin/env texlua

-- Build script for "LaTeX PDF management testphase bundle" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfmanagement-testphase"


installfiles = {"*.sty","*.cls","*.def","*.lua","*.ltx"}

if options["target"] == "ctan" then
  sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "firstaid/transparent-ltx.sty",          
                "firstaid/hyperxmp-patches-tmp-ltx.sty",                
                "firstaid/pdflscape-ltx.sty",
                "firstaid/xcolor-patches-tmp-ltx.sty",                
                 }
else
 sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "firstaid/transparent-ltx.sty",          
                "firstaid/hyperxmp-patches-tmp-ltx.sty",                
                "firstaid/pdflscape-ltx.sty",
                "firstaid/xcolor-patches-tmp-ltx.sty",  
                "support/pdfmanagement-regressiontest.sty",              
                "newpackages/new-bookmark.sty",
                "newpackages/bkm-generic.def",
                "newpackages/new-attachfile.sty",
                "newpackages/atfi-generic.def"                
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

checkengines = {"luatex","pdftex","xetex"}


checkconfigs = {"build",
                "config-noxetex",
                "config-luatex",
                "config-dvips" 
                }

