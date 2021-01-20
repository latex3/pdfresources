rem */\(1+[a-z\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

REM Failed tests for configuration config-noxetex:
REM
REM   Check failed with difference files
REM   - ./build/test-config-noxetex/calculationsortorder.luatex.pdf.fc
REM   - ./build/test-config-noxetex/calculationsortorder.pdftex.pdf.fc
REM   - ./build/test-config-noxetex/metadata.luatex.pdf.fc
REM   - ./build/test-config-noxetex/metadata.pdftex.pdf.fc
REM   - ./build/test-config-noxetex/pgfpatches.luatex.pdf.fc
REM   - ./build/test-config-noxetex/pgfpatches.pdftex.pdf.fc
REM
REM
REM Failed tests for configuration config-dvips:
REM
REM   Check failed with difference files
REM   - ./build/test-config-dvips/catalogAF.latexdvips.pdf.fc
REM   - ./build/test-config-dvips/embedfile.latexdvips.pdf.fc
REM   - ./build/test-config-dvips/ismap.latexdvips.pdf.f
