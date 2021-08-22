rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


l3build save -exetex annot-dict
l3build save -eluatex annot-last
l3build save -epdftex annot-last
l3build save -exetex annot-last
l3build save -exetex annot
l3build save -exetex catalogAF
l3build save -exetex colorprofile-standard
l3build save -exetex colorprofile1
l3build save -exetex destination-options
l3build save -eluatex dict_if_empty
l3build save -epdftex dict_if_empty
l3build save -exetex dict_if_empty
l3build save -exetex infodict-new
l3build save -exetex infodict
l3build save -exetex mixpageattr
l3build save -exetex ocproperties
l3build save -exetex pageattr
l3build save -eluatex pagelabels-log
l3build save -epdftex pagelabels-log
l3build save -exetex pagelabels-log
l3build save -exetex pagelabels
l3build save -exetex pagesattr
l3build save -exetex pdflscape
l3build save -eluatex show
l3build save -epdftex show
l3build save -exetex show
l3build save -exetex thispageattr
l3build save -exetex transition
l3build save -eluatex version-compare
l3build save -epdftex version-compare
l3build save -exetex version-compare
l3build save -exetex viewerpreferences
l3build save -exetex xform-preamble
l3build save -exetex xform
