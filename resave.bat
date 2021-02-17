rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1
REM
REM    Check failed with difference files
REM    - ./build/test/annot-last.luatex.fc
REM    - ./build/test/annot-last.pdftex.fc
REM    - ./build/test/annot-last.xetex.fc
REM    - ./build/test/bdc-properties.pdftex.pdf.fc
REM    - ./build/test/catalogAF.pdftex.pdf.fc
REM    - ./build/test/destination-options.pdftex.pdf.fc
REM    - ./build/test/dict_if_empty.luatex.fc
REM    - ./build/test/dict_if_empty.pdftex.fc
REM    - ./build/test/dict_if_empty.xetex.fc
REM    - ./build/test/disable-links.pdftex.pdf.fc
REM    - ./build/test/formtextfields.pdftex.pdf.fc
REM    - ./build/test/infodict-new.pdftex.pdf.fc
REM    - ./build/test/infodict.pdftex.pdf.fc
REM    - ./build/test/ismap.pdftex.pdf.fc
REM    - ./build/test/linkbordercolor.pdftex.pdf.fc
REM    - ./build/test/linkhook.pdftex.pdf.fc
REM    - ./build/test/linkmargin.pdftex.pdf.fc
REM    - ./build/test/linktoc.pdftex.pdf.fc
REM    - ./build/test/mixpageattr.pdftex.pdf.fc
REM    - ./build/test/ocgcolorlinks.pdftex.pdf.fc
REM    - ./build/test/ocproperties.pdftex.pdf.fc
REM    - ./build/test/pageattr.pdftex.pdf.fc
REM    - ./build/test/pagelabels-log.luatex.fc
REM    - ./build/test/pagelabels-log.pdftex.fc
REM    - ./build/test/pagelabels-log.xetex.fc
REM    - ./build/test/pagelabels.pdftex.pdf.fc
REM    - ./build/test/pagesattr.pdftex.pdf.fc
REM    - ./build/test/pdffilelink.pdftex.pdf.fc
REM    - ./build/test/pdflscape.pdftex.pdf.fc
REM    - ./build/test/show.luatex.fc
REM    - ./build/test/show.pdftex.fc
REM    - ./build/test/show.xetex.fc
REM    - ./build/test/thispageattr.pdftex.pdf.fc
REM    - ./build/test/transition.pdftex.pdf.fc
REM    - ./build/test/version-compare.luatex.fc
REM    - ./build/test/version-compare.pdftex.fc
REM    - ./build/test/version-compare.xetex.fc
REM    - ./build/test/viewerpreferences.pdftex.pdf.fc
REM    - ./build/test/xform-preamble.pdftex.pdf.fc
REM    - ./build/test/xform.pdftex.pdf.fc
REM
REM  Failed tests for configuration config-noxetex:
REM
REM    Check failed with difference files
REM    - ./build/test-config-noxetex/calculationsortorder.pdftex.pdf.fc
REM    - ./build/test-config-noxetex/extgstate-patches.pdftex.pdf.fc
REM    - ./build/test-config-noxetex/metadata.pdftex.pdf.fc
REM    - ./build/test-config-noxetex/pgfpatches.pdftex.pdf.fc
REM    - ./build/test-config-noxetex/test-new-transparent.pdftex.pdf.fc
REM    - ./build/test-config-noxetex/transparent-tikz.pdftex.pdf.fc
REM
REM  Failed tests for configuration config-dvips:
REM
REM    Check failed with difference files
REM    - ./build/test-config-dvips/annot-last.latexdvips.fc
REM    - ./build/test-config-dvips/dict_if_empty.latexdvips.fc
REM    - ./build/test-config-dvips/pagelabels-log.latexdvips.fc
REM    - ./build/test-config-dvips/show.latexdvips.fc
REM    - ./build/test-config-dvips/version-compare.latexdvips.fc
REM
