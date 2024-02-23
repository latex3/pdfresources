rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


l3build save -e xetex test-pdfA-4 show metadata-new metadata-new-no-hyperref infodict-new catalog-remove
l3build save -e luatex test-pdfA-4 show metadata-new metadata-new-no-hyperref infodict-new catalog-remove
