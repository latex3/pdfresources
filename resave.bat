rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

REM   Check failed with difference files
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
REM   - ./build/test/documentmetadata-support-000.luatex.fc
REM   - ./build/test/documentmetadata-support-000.pdftex.fc
REM   - ./build/test/documentmetadata-support-000.xetex.fc
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
l3build save -eluatex metadata-new-no-hyperref
l3build save -epdftex metadata-new-no-hyperref
l3build save -exetex metadata-new-no-hyperref
l3build save -eluatex metadata-new
l3build save -epdftex metadata-new
l3build save -exetex metadata-new
l3build save -eluatex mixpageattr
l3build save -epdftex mixpageattr
l3build save -exetex mixpageattr
l3build save -eluatex ocgcolorlinks
l3build save -epdftex ocgcolorlinks
l3build save -exetex ocgcolorlinks
l3build save -eluatex ocproperties
l3build save -epdftex ocproperties
l3build save -exetex ocproperties
l3build save -eluatex pageattr
l3build save -epdftex pageattr
l3build save -exetex pageattr
l3build save -eluatex pagelabels
l3build save -epdftex pagelabels
l3build save -exetex pagelabels
l3build save -eluatex pagesattr
l3build save -epdftex pagesattr
l3build save -exetex pagesattr
l3build save -eluatex pdffilelink
l3build save -epdftex pdffilelink
l3build save -exetex pdffilelink
l3build save -eluatex pdflscape
l3build save -epdftex pdflscape
l3build save -exetex pdflscape
l3build save -eluatex pgfpatches
l3build save -epdftex pgfpatches
l3build save -exetex pgfpatches
l3build save -eluatex radiobuttons
l3build save -epdftex radiobuttons
l3build save -exetex radiobuttons
l3build save -eluatex stop-link
l3build save -epdftex stop-link
l3build save -exetex stop-link
l3build save -eluatex tag-checkbox
l3build save -epdftex tag-checkbox
l3build save -exetex tag-checkbox
l3build save -eluatex textfield
l3build save -epdftex textfield
l3build save -exetex textfield
l3build save -eluatex thispageattr
l3build save -epdftex thispageattr
l3build save -exetex thispageattr
l3build save -eluatex transition
l3build save -epdftex transition
l3build save -exetex transition
l3build save -eluatex viewerpreferences
l3build save -epdftex viewerpreferences
l3build save -exetex viewerpreferences
l3build save -eluatex xform-appearance
l3build save -epdftex xform-appearance
l3build save -exetex xform-appearance
l3build save -eluatex xform-preamble
l3build save -epdftex xform-preamble
l3build save -exetex xform-preamble
l3build save -eluatex xform
l3build save -epdftex xform
l3build save -exetex xform
REM
REM Failed tests for configuration config-noxetex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-noxetex/calculationsortorder.luatex.fc
REM   - ./build/test-config-noxetex/calculationsortorder.pdftex.fc
REM   - ./build/test-config-noxetex/colorspace.luatex.fc
REM   - ./build/test-config-noxetex/colorspace.pdftex.fc
REM   - ./build/test-config-noxetex/extgstate-patches.luatex.fc
REM   - ./build/test-config-noxetex/extgstate-patches.pdftex.fc
REM   - ./build/test-config-noxetex/metadata.luatex.fc
REM   - ./build/test-config-noxetex/metadata.pdftex.fc
REM   - ./build/test-config-noxetex/pdfa2b-test.luatex.fc
REM   - ./build/test-config-noxetex/pdfa2b-test.pdftex.fc
REM   - ./build/test-config-noxetex/pgfpatches.luatex.fc
REM   - ./build/test-config-noxetex/pgfpatches.pdftex.fc
REM   - ./build/test-config-noxetex/test-new-transparent.luatex.fc
REM   - ./build/test-config-noxetex/test-new-transparent.pdftex.fc
REM   - ./build/test-config-noxetex/transparent-tikz.luatex.fc
REM   - ./build/test-config-noxetex/transparent-tikz.pdftex.fc
REM
REM Failed tests for configuration config-luatex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-luatex/fontspec-spotcolor.luatex.fc
REM   - ./build/test-config-luatex/non-ascii-links.luatex.fc
REM   - ./build/test-config-luatex/structure-destination.luatex.fc
REM
REM Failed tests for configuration config-dvips:
REM
REM   Check failed with difference files
REM   - ./build/test-config-dvips/metadata-new.latexdvips.fc
REM
REM Failed tests for configuration config-pdftex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-pdftex/metadata-ansi.pdftex.fc
REM   - ./build/test-config-pdftex/structure-destination.pdftex.fc
REM
REM Failed tests for configuration config-xetex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-xetex/structure-destination.xetex.fc
