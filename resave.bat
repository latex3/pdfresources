rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

REM   - ./build/test-config-noxetex/metadata.luatex.pdf.fc
REM   - ./build/test-config-noxetex/metadata.pdftex.pdf.fc

l3build save -eluatex annot
l3build save -epdftex annot
l3build save -exetex annot
