#!/usr/bin/env texlua

-- Build script for "pdfresources" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfresources"


installfiles = {"*.sty","*.cls","*.def","*.lua","*.ltx"}
sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "pdfmanagement-regressiontest.sty",
                "hgeneric-experimental.def",
                "firstaid/transparent-ltx.sty",          
                "firstaid/hyperxmp-patches-tmp-ltx.sty",                
                "firstaid/pdflscape-ltx.sty",
                "firstaid/xcolor-patches-tmp-ltx.sty",                
                "newpackages/new-bookmark.sty",
                "newpackages/bkm-generic.def",
                "newpackages/new-attachfile.sty",
                "newpackages/atfi-generic.def"                
                }

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

