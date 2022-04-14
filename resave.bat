rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


l3build save -exetex checkbox
l3build save -exetex disable-links
l3build save -exetex linkbordercolor
l3build save -exetex linkhook
l3build save -exetex linkmargin
l3build save -exetex ocgcolorlinks
l3build save -exetex pdflscape
l3build save -exetex pgfpatches
l3build save -exetex stop-link
