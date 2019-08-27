#!/usr/bin/env texlua

-- Build script for "pdfresources" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfresources"

installfiles = {"*.sty","*.cls","*.def","*.lua"}
sourcefiles =  {"*.dtx","*.ins",
                "hluatex-experimental.def",
                "tmpl3shipout.sty",
                "newpackages/new-transparent.sty"}

checkruns = 3
checkengines = {"luatex","pdftex","xetex"}

checkconfigs = {"build",
                "config-noxetex"
                }

