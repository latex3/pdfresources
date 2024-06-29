rem */\(1+[a-zA-Z0-9\-\_]\)\.\(2+[a-z]\)\.*
rem l3build save -e\2 \1
rem l3build save -cconfig-dvips \1
rem l3build save -cconfig-luatex -e\2 \1
rem l3build save -cconfig-noxetex -e\2 \1

l3build save -e xetex destination-options textfield linktoc formfield-old a-4f annot tag-checkbox pagesattr xform-appearance disable-links pdffilelink show active-colon colorprofile-standard transition bdc-shipout metadata-new radiobuttons metadata-new-no-hyperref pgfpatches checkbox embedfile test-pdfA-4 u-standard linkmargin formtextfields xform infodict-new ap-names embedstream ocgcolorlinks pageattr colorprofile1 mixpageattr linkbordercolor pagelabels xform-preamble ismap thispageattr annot-dict pdflscape bdc-properties infodict
    l3build save -e luatex destination-options textfield linktoc formfield-old a-4f annot tag-checkbox pagesattr xform-appearance disable-links pdffilelink show active-colon colorprofile-standard transition bdc-shipout metadata-new radiobuttons metadata-new-no-hyperref pgfpatches checkbox embedfile test-pdfA-4 u-standard linkmargin formtextfields xform infodict-new ap-names embedstream ocgcolorlinks pageattr colorprofile1 mixpageattr linkbordercolor pagelabels xform-preamble ismap thispageattr annot-dict pdflscape bdc-properties infodict
