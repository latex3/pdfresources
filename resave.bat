rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


REM   Check failed with difference files
l3build save -eluatex xform-appearance
l3build save -epdftex xform-appearance
l3build save -exetex xform-appearance
REM
REM Failed tests for configuration config-dvips:
REM
REM   Check failed with difference files
l3build save -cconfig-dvips annot
l3build save -cconfig-dvips ap-names
l3build save -cconfig-dvips bdc-properties
l3build save -cconfig-dvips catalogAF
l3build save -cconfig-dvips colorprofile-standard
l3build save -cconfig-dvips colorprofile1
l3build save -cconfig-dvips destination-options
l3build save -cconfig-dvips disable-links
l3build save -cconfig-dvips embedfile
l3build save -cconfig-dvips formfield-old
l3build save -cconfig-dvips infodict
l3build save -cconfig-dvips ismap
l3build save -cconfig-dvips linkhook
l3build save -cconfig-dvips pagelabels
l3build save -cconfig-dvips pdffilelink
l3build save -cconfig-dvips pdflscape
l3build save -cconfig-dvips pgfpatches
l3build save -cconfig-dvips xform-appearance
l3build save -cconfig-dvips xform-clipping-gh25
l3build save -cconfig-dvips xform-preamble
l3build save -cconfig-dvips xform
