#!/usr/bin/env texlua

-- Build script for "pdfresources" bundle

-- Identify the bundle and module
bundle  = ""
module  = "pdfresources"

installfiles = {"*.sty","*.cls","*.def"}
sourcefiles =  {"*.dtx","*.ins","hluatex-experimental.def"}

checkruns = 2

