rem */\(1+[a-z\-]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1

REM leave (id)  - ./build/test/viewerpreferences.xetex.pdf.fc

l3build save -cconfig-noxetex -eluatex calculationsortorder
l3build save -cconfig-noxetex -epdftex calculationsortorder
l3build save -cconfig-noxetex -eluatex extgstate-patches
l3build save -cconfig-noxetex -epdftex extgstate-patches
l3build save -cconfig-noxetex -eluatex metadata
l3build save -cconfig-noxetex -epdftex metadata
l3build save -cconfig-noxetex -eluatex pgfpatches
l3build save -cconfig-noxetex -epdftex pgfpatches
l3build save -cconfig-noxetex -eluatex test-new-transparent
l3build save -cconfig-noxetex -epdftex test-new-transparent
l3build save -cconfig-noxetex -eluatex transparent-tikz
l3build save -cconfig-noxetex -epdftex transparent-tikz
