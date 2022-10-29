rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -eluatex documentmetadata-support-000
l3build save -eluatex tag-checkbox
l3build save -epdftex tag-checkbox
l3build save -exetex tag-checkbox

l3build save -cconfig-luatex structure-destination
l3build save -cconfig-pdftex structure-destination
l3build save -cconfig-xetex structure-destination
