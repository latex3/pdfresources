rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1

l3build save -cconfig-noxetex -eluatex calculationsortorder
l3build save -cconfig-noxetex -epdftex calculationsortorder
l3build save -cconfig-noxetex -eluatex metadata
l3build save -cconfig-noxetex -epdftex metadata
