rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

REM l3build save -eluatex ocgcolorlinks
REM l3build save -epdftex ocgcolorlinks
REM l3build save -exetex ocgcolorlinks

REM   - ./build/test-config-noxetex/metadata.luatex.pdf.fc
REM   - ./build/test-config-noxetex/metadata.pdftex.pdf.fc


l3build save -exetex linkbordercolor
l3build save -exetex linkhook
l3build save -exetex linkmargin
REM l3build save -eluatex viewerpreferences
REM l3build save -epdftex viewerpreferences
REM l3build save -exetex viewerpreferences
l3build save -exetex xform-preamble
l3build save -exetex xform

REM Failed tests for configuration config-noxetex:
REM
REM   - ./build/test-config-noxetex/pgfpatches.luatex.pdf.fc
REM   - ./build/test-config-noxetex/pgfpatches.pdftex.pdf.fc
REM
REM Failed tests for configuration config-dvips:
REM
REM   Check failed with difference files
REM   - ./build/test-config-dvips/linkhook.latexdvips.pdf.fc
