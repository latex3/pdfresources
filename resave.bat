rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -cconfig-dvips annot-last
l3build save -cconfig-dvips catalogAF
l3build save -cconfig-dvips destination-options
l3build save -cconfig-dvips dict_if_empty
l3build save -cconfig-dvips pagelabels-log
l3build save -cconfig-dvips pdf_pageobject_ref
l3build save -cconfig-dvips show
l3build save -cconfig-dvips text-convert
l3build save -cconfig-dvips version-compare
