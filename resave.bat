rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -eluatex ocgcolorlinks
l3build save -epdftex ocgcolorlinks
l3build save -exetex ocgcolorlinks
