rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

Rem Check failed with difference files
l3build save -eluatex disable-links
l3build save -epdftex disable-links
l3build save -exetex disable-links
l3build save -eluatex linkbordercolor
l3build save -epdftex linkbordercolor
l3build save -exetex linkbordercolor
l3build save -eluatex ocgcolorlinks
l3build save -epdftex ocgcolorlinks
l3build save -exetex ocgcolorlinks
l3build save -eluatex pdffilelink
l3build save -epdftex pdffilelink
l3build save -exetex pdffilelink

Rem  Check failed with difference files
l3build save -cconfig-dvips disable-links
l3build save -cconfig-dvips pdffilelink
