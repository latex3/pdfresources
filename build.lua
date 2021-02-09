#!/usr/bin/env texlua

-- Build script for "pdfresources" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfresources"


installfiles = {"*.sty","*.cls","*.def","*.lua"}
sourcefiles =  {"*.dtx","*.ins",
                "l3ref-tmp.sty",
                "xcolor-patches-tmp.sty",
                "pdfmanagement-regressiontest.sty",
                "hgeneric-experimental.def",
                "newpackages/new-transparent.sty",
                "newpackages/new-transparent2.sty",
                "newpackages/new-bookmark.sty",
                "newpackages/bkm-generic.def",
                "newpackages/new-attachfile.sty",
                "newpackages/atfi-generic.def",
                "newpackages/new-hyperxmp.sty",                
                "newpackages/new-pdflscape.sty"
                }

checkruns = 3

if string.find(status.banner,"2019") then
  print("TL2019")
  testfiledir="./testfiles2019"
  TL2019bool=true
else 
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
end

checkengines = {"luatex","pdftex","xetex"}


checkconfigs = {"build",
                "config-noxetex",
                "config-luatex",
                "config-dvips" 
                }

