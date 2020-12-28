rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1

REM CHECK  l3build save -cconfig-dvips embedfile

REM check!  - ./build/test/linkhook.xetex.pdf.fc
REM check!  - ./build/test/ocgcolorlinks.xetex.pdf.fc
REM check!  - ./build/test/pdffilelink.xetex.pdf.fc
REM check!    - ./build/test/show.luatex.fc
REM check!  - ./build/test/show.pdftex.fc
REM check!    - ./build/test/show.xetex.fc
REM leave (id)  - ./build/test/viewerpreferences.xetex.pdf.fc
