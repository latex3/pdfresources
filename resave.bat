rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

REM   Check failed with difference files
REM     - ./build/test/checkbox.xetex.pdf.fc 
REM     - ./build/test/disable-links.xetex.pdf.fc
REM     - ./build/test/linkbordercolor.xetex.pdf.fc
REM     - ./build/test/linkhook.xetex.pdf.fc
REM     - ./build/test/linkmargin.xetex.pdf.fc
REM     - ./build/test/ocgcolorlinks.xetex.pdf.fc
REM     - ./build/test/pgfpatches.xetex.pdf.fc
REM
REM   Failed tests for configuration config-dvips:
REM
REM     Check failed with difference files
REM     - ./build/test-config-dvips/ismap.latexdvips.pdf.fc
