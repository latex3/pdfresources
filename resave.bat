rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -exetex annot-dict
l3build save -exetex annot-last
l3build save -exetex annot
l3build save -exetex ap-names
l3build save -exetex bdc-properties
l3build save -exetex calculate-textfield
l3build save -exetex catalogAF
l3build save -exetex checkbox
l3build save -exetex colorprofile-standard
l3build save -exetex colorprofile1
l3build save -exetex destination-options
l3build save -exetex dict_if_empty
l3build save -exetex disable-links
l3build save -exetex embedfile
l3build save -exetex formfield-old
l3build save -exetex formtextfields
l3build save -exetex infodict-new
l3build save -exetex infodict
l3build save -exetex ismap
l3build save -exetex linkbordercolor
l3build save -exetex linkhook
l3build save -exetex linkmargin
l3build save -exetex linktoc
l3build save -exetex mixpageattr
l3build save -exetex ocgcolorlinks
l3build save -exetex ocproperties
l3build save -exetex pageattr
l3build save -exetex pagelabels-log
l3build save -exetex pagelabels
l3build save -exetex pagesattr
l3build save -exetex pdffilelink
l3build save -exetex pdflscape
l3build save -exetex pgfpatches
l3build save -exetex radiobuttons
l3build save -exetex show
l3build save -exetex stop-link
l3build save -exetex tag-checkbox
l3build save -exetex textfield
l3build save -exetex thispageattr
l3build save -exetex transition
l3build save -exetex version-compare
l3build save -exetex viewerpreferences
l3build save -exetex xform-appearance
l3build save -exetex xform-preamble
l3build save -exetex xform

REM Failed tests for configuration config-noxetex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-noxetex/colorspace.luatex.fc
REM
REM Failed tests for configuration config-dvips:
REM
REM   Check failed with difference files
REM   - ./build/test-config-dvips/annot.latexdvips.fc
REM   - ./build/test-config-dvips/ap-names.latexdvips.fc
REM   - ./build/test-config-dvips/bdc-properties.latexdvips.fc
REM   - ./build/test-config-dvips/catalogAF.latexdvips.fc
REM   - ./build/test-config-dvips/colorprofile-standard.latexdvips.fc
REM   - ./build/test-config-dvips/colorprofile1.latexdvips.fc
REM   - ./build/test-config-dvips/destination-options.latexdvips.fc
REM   - ./build/test-config-dvips/disable-links.latexdvips.fc
REM   - ./build/test-config-dvips/embedfile.latexdvips.fc
REM   - ./build/test-config-dvips/formfield-old.latexdvips.fc
REM   - ./build/test-config-dvips/infodict.latexdvips.fc
REM   - ./build/test-config-dvips/ismap.latexdvips.fc
REM   - ./build/test-config-dvips/linkhook.latexdvips.fc
REM   - ./build/test-config-dvips/pagelabels.latexdvips.fc
REM   - ./build/test-config-dvips/pdffilelink.latexdvips.fc
REM   - ./build/test-config-dvips/pdflscape.latexdvips.fc
REM   - ./build/test-config-dvips/pgfpatches.latexdvips.fc
REM   - ./build/test-config-dvips/xform-appearance.latexdvips.fc
REM   - ./build/test-config-dvips/xform-clipping-gh25.latexdvips.fc
REM   - ./build/test-config-dvips/xform-preamble.latexdvips.fc
REM   - ./build/test-config-dvips/xform.latexdvips.fc
REM
REM Failed tests for configuration config-xetex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-xetex/structure-destination.xetex.fc
