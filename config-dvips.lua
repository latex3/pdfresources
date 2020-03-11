testfiledir  = "testfiles-dvips"
-- checkengines = {"latexdvips"}
-- stdengine     = "latexdvips"
checkengines = {"dvipsbat"}
stdengine     = "dvipsbat"

checkruns=2
ps2pdfopt = " -sDocumentUUID=DocumentUUID -sInstanceUUID=InstanceUUID -dCompressStreams=false -dCompressPages=false -dNOSAFER "
function dvitopdf(name, dir, engine, hide)
    run(
      dir,
      (forcecheckepoch and setepoch() or "") ..
     "dvips " .. name .. dviext
       .. (hide and (" > " .. os_null) or "")
       .. os_concat ..
     "ps2pdf " .. ps2pdfopt .. name .. psext
      --  .. (hide and (" > " .. os_null) or "")
    )
end

-- dviext="xxx"

-- the use of this config file, needs a patch (or something equivalent)
-- called l3builddvips and which this content:
--
-- latex  %1 %2 %3 %4 %5
-- dvips %4
---ps2pdf -sDocumentUUID=DocumentUUID -sInstanceUUID=InstanceUUID -dCompressStreams=false -dCompressPages=false -dNOSAFER %4.ps

