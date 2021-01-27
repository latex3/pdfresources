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
