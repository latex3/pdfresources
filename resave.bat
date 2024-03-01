rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

 l3build save -e xetex active-colon linkmargin ismap
  l3build save -e luatex active-colon linkmargin ismap
  l3build save ocgcolorlinks linkbordercolor disable-links destination-options
  l3build save -c config-luatex linkhook structure-destination
  l3build save -c config-dvips linkhook disable-links destination-options
  l3build save -c config-pdftex structure-destination linkhook nested-links
  l3build save -c config-xetex linkhook structure-destination
