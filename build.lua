#!/usr/bin/env texlua

-- Build script for "pdfresources" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfresources"

installfiles = {"*.sty","*.cls","*.def","*.lua"}
sourcefiles =  {"*.dtx","*.ins",
                "hgeneric-experimental.def",
                "tmpl3shipout.sty",
                "newpackages/new-transparent.sty"}

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
    luatex     = {binary="luahbtex",format = "lualatex"},
    latexdvips = {binary="latex.exe",format = ""}
    }
end

checkengines = {"luatex","pdftex","xetex"}

checkconfigs = {"build",
                "config-noxetex",
                "config-luatex",
                -- "config-dvips" -- works currently only locally
                }

