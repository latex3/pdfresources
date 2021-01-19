rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1

l3build save -eluatex -cconfig-noxetex pgfpatches
l3build save -epdftex -cconfig-noxetex pgfpatches
l3build save -cconfig-luatex non-ascii-links

l3build save -cconfig-dvips destination-options
