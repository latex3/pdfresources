rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1


REM  Check failed with difference files
l3build save -eluatex active-colon
l3build save -epdftex active-colon
l3build save -exetex active-colon
l3build save -eluatex annot-dict
l3build save -epdftex annot-dict
l3build save -exetex annot-dict
l3build save -eluatex annot
l3build save -epdftex annot
l3build save -exetex annot
l3build save -eluatex ap-names
l3build save -epdftex ap-names
l3build save -exetex ap-names
l3build save -eluatex bdc-properties
l3build save -epdftex bdc-properties
l3build save -exetex bdc-properties
l3build save -eluatex calculate-textfield
l3build save -epdftex calculate-textfield
l3build save -exetex calculate-textfield
l3build save -eluatex catalogAF
l3build save -epdftex catalogAF
l3build save -exetex catalogAF
l3build save -eluatex checkbox
l3build save -epdftex checkbox
l3build save -exetex checkbox
l3build save -eluatex colorprofile-standard
l3build save -epdftex colorprofile-standard
l3build save -exetex colorprofile-standard
l3build save -eluatex colorprofile1
l3build save -epdftex colorprofile1
l3build save -exetex colorprofile1
l3build save -eluatex destination-options
l3build save -epdftex destination-options
l3build save -exetex destination-options
l3build save -eluatex disable-links
l3build save -epdftex disable-links
l3build save -exetex disable-links
l3build save -eluatex embedfile
l3build save -epdftex embedfile
l3build save -exetex embedfile
l3build save -eluatex formfield-old
l3build save -epdftex formfield-old
l3build save -exetex formfield-old
l3build save -eluatex formtextfields
l3build save -epdftex formtextfields
l3build save -exetex formtextfields
l3build save -eluatex infodict-new
l3build save -epdftex infodict-new
l3build save -exetex infodict-new
l3build save -eluatex infodict
l3build save -epdftex infodict
l3build save -exetex infodict
l3build save -eluatex ismap
l3build save -epdftex ismap
l3build save -exetex ismap
l3build save -eluatex linkbordercolor
l3build save -epdftex linkbordercolor
l3build save -exetex linkbordercolor
l3build save -eluatex linkhook
l3build save -epdftex linkhook
l3build save -exetex linkhook
l3build save -eluatex linkmargin
l3build save -epdftex linkmargin
l3build save -exetex linkmargin
l3build save -eluatex linktoc
l3build save -epdftex linktoc
l3build save -exetex linktoc


l3build save -cconfig-luatex documentmetadata-support-000
l3build save -cconfig-luatex documentmetadata-support-000
l3build save -cconfig-luatex documentmetadata-support-000

REM   Check failed with difference files
l3build save -cconfig-noxetex -eluatex calculationsortorder
l3build save -cconfig-noxetex -epdftex calculationsortorder
l3build save -cconfig-noxetex -eluatex colorspace
l3build save -cconfig-noxetex -epdftex colorspace
l3build save -cconfig-noxetex -eluatex extgstate-patches
l3build save -cconfig-noxetex -epdftex extgstate-patches
l3build save -cconfig-noxetex -eluatex metadata
l3build save -cconfig-noxetex -epdftex metadata
l3build save -cconfig-noxetex -eluatex pdfa2b-test
l3build save -cconfig-noxetex -eluatex pgfpatches
l3build save -cconfig-noxetex -epdftex pgfpatches
l3build save -cconfig-noxetex -eluatex test-new-transparent
l3build save -cconfig-noxetex -epdftex test-new-transparent
l3build save -cconfig-noxetex -eluatex transparent-tikz
l3build save -cconfig-noxetex -epdftex transparent-tikz

REM Failed tests for configuration config-luatex:

l3build save -cconfig-luatex -eluatex fontspec-spotcolor
l3build save -cconfig-luatex -eluatex non-ascii-links
l3build save -cconfig-luatex -eluatex structure-destination


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
l3build save -cconfig-dvips metadata-new
l3build save -cconfig-dvips pagelabels
l3build save -cconfig-dvips pdffilelink
l3build save -cconfig-dvips pdflscape
l3build save -cconfig-dvips pgfpatches
l3build save -cconfig-dvips xform-appearance
l3build save -cconfig-dvips xform-clipping-gh25
l3build save -cconfig-dvips xform-preamble
l3build save -cconfig-dvips xform



REM Failed tests for configuration config-pdftex:

l3build save -cconfig-pdftex -epdftex metadata-ansi
l3build save -cconfig-pdftex -epdftex structure-destination

REM Failed tests for configuration config-xetex:

l3build save -cconfig-xetex -exetex structure-destination
