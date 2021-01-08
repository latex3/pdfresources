rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1


REM Must be checked for correct working or links due to changed encoding.
  Check failed with difference files
  - ./build/test/ismap.luatex.pdf.fc
  - ./build/test/ismap.pdftex.pdf.fc
  - ./build/test/ismap.xetex.pdf.fc
  - ./build/test/linkbordercolor.luatex.pdf.fc
  - ./build/test/linkbordercolor.pdftex.pdf.fc
  - ./build/test/linkbordercolor.xetex.pdf.fc
  - ./build/test/linkhook.luatex.pdf.fc
  - ./build/test/linkhook.pdftex.pdf.fc
  - ./build/test/linkhook.xetex.pdf.fc
  - ./build/test/ocgcolorlinks.luatex.pdf.fc
  - ./build/test/ocgcolorlinks.pdftex.pdf.fc
  - ./build/test/ocgcolorlinks.xetex.pdf.fc

Failed tests for configuration config-luatex:

  Check failed with difference files
  - ./build/test-config-luatex/non-ascii-links.luatex.pdf.fc

Failed tests for configuration config-dvips:

  Check failed with difference files
   - ./build/test-config-dvips/pdffilelink.latexdvips.pdf.fc
