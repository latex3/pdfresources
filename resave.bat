rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


l3build save -c config-noxetex pdfa2b-test metadata
l3build save -c config-luatex structure-destination
l3build save -c config-dvips catalog-remove metadata-new show
l3build save -c config-pdftex metadata-ansi structure-destination
l3build save -c config-xetex structure-destination 
