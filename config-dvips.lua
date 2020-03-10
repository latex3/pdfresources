testfiledir  = "testfiles-dvips"
checkengines = {"dvipsbat"}
stdengine     = "dvipsbat"
checkruns=3
dviext="xxx"

-- the use of this config file, needs a patch (or something equivalent)
-- called l3builddvips and which this content:
--
-- latex  %1 %2 %3 %4 %5
-- dvips %4
---ps2pdf -sDocumentUUID=DocumentUUID -sInstanceUUID=InstanceUUID -dCompressStreams=false -dCompressPages=false -dNOSAFER %4.ps

