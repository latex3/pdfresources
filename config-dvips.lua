testfiledir  = "testfiles-dvips"
-- resultdir   =  builddir .. "/result/dvips"
checkengines = {"latexdvips"}

stdengine     = "latexdvips"
-- ps2pdfopt = " -sDocumentUUID=DocumentUUID -sInstanceUUID=InstanceUUID -dCompressStreams=false -dCompressPages=false -dNOSAFER "
ps2pdfopts = "-dCompressStreams=false -dCompressPages=false -dNOSAFER "
