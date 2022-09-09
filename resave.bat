rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -eluatex,pdftex,xetex annot
l3build save -eluatex,pdftex,xetex annot-dict
l3build save -eluatex,pdftex,xetex annot-last
l3build save -eluatex,pdftex,xetex ap-names
l3build save -eluatex,pdftex,xetex bdc-properties
l3build save -eluatex,pdftex,xetex calculate-textfield
l3build save -eluatex,pdftex,xetex catalogAF
l3build save -eluatex,pdftex,xetex checkbox
l3build save -eluatex,pdftex,xetex colorprofile-standard
l3build save -eluatex,pdftex,xetex colorprofile1
l3build save -eluatex,pdftex,xetex destination-options
