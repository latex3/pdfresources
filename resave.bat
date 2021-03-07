rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -exetex annot-last
l3build save -exetex dict_if_empty
l3build save -exetex pagelabels-log
l3build save -exetex show
l3build save -exetex version-compare
