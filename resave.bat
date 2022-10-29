rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

Failed tests for configuration build:

  Check failed with difference files
  - ./build/test/documentmetadata-support-000.luatex.fc
  - ./build/test/documentmetadata-support-000.pdftex.fc
  - ./build/test/documentmetadata-support-000.xetex.fc



