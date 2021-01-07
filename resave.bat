rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1

%all because of pagelabel improvement.

  Check failed with difference files
  - ./build/test/destination-options.luatex.pdf.fc
  - ./build/test/destination-options.pdftex.pdf.fc
  - ./build/test/embedfile.luatex.pdf.fc
  - ./build/test/embedfile.pdftex.pdf.fc
  - ./build/test/formtextfields.luatex.pdf.fc
  - ./build/test/formtextfields.pdftex.pdf.fc
  - ./build/test/infodict-new.luatex.pdf.fc
  - ./build/test/infodict-new.pdftex.pdf.fc
  - ./build/test/ismap.luatex.pdf.fc
  - ./build/test/ismap.pdftex.pdf.fc
  - ./build/test/linkbordercolor.luatex.pdf.fc
  - ./build/test/linkbordercolor.pdftex.pdf.fc
  - ./build/test/linkhook.luatex.pdf.fc
  - ./build/test/linkhook.pdftex.pdf.fc
  - ./build/test/ocgcolorlinks.luatex.pdf.fc
  - ./build/test/ocgcolorlinks.pdftex.pdf.fc
  - ./build/test/pdffilelink.luatex.pdf.fc
  - ./build/test/pdffilelink.pdftex.pdf.fc
  - ./build/test/transition.luatex.pdf.fc
  - ./build/test/transition.pdftex.pdf.fc
  - ./build/test/viewerpreferences.luatex.pdf.fc
  - ./build/test/viewerpreferences.pdftex.pdf.fc

Failed tests for configuration config-noxetex:

  Check failed with difference files
  - ./build/test-config-noxetex/calculationsortorder.luatex.pdf.fc
  - ./build/test-config-noxetex/calculationsortorder.pdftex.pdf.fc
  - ./build/test-config-noxetex/metadata.luatex.pdf.fc
  - ./build/test-config-noxetex/metadata.pdftex.pdf.fc
  - ./build/test-config-noxetex/pgfpatches.luatex.pdf.fc
  - ./build/test-config-noxetex/pgfpatches.pdftex.pdf.fc

Failed tests for configuration config-luatex:

  Check failed with difference files
  - ./build/test-config-luatex/non-ascii-links.luatex.pdf.fc
