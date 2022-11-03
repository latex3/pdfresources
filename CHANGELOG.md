# Changelog
All notable changes to the `pdfmanagement-testphase` bundle since the 
first release 0.95a, 2021-02-23 will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
this project uses date-based 'snapshot' version identifiers.

## [2022-11-03]

### Added 
 - ltdocinit: expl3 functions to retrieve values from the document properties.
    
### Changed
 - removed firstaid for transparent as the package is now compatible.
 - removed firstaid for pdflscape as the package is now compatible. 
 - ltdocinit/firstaid: the output patches for header and footer 
   are no longer loaded by default but must be loaded with the testphase key.
 - removed firstaid for beamer as no longer needed
 - ltdocinit: removed definition for \DocumentMetadata, it is now provided by latex-lab
### Fixed
 - faulty firstaid for doclicense
 
## [2022-09-26]

### Added
 - XMP-Metadata are now created by code in l3pdfmeta. 
   More details can be found in l3pdfmeta. 
 
### Removed 
 -  The patch which allowed the use of hyperxmp has been removed as no longer needed. 
 
### Changed
 - XMP-Metadata are uncompressed (if supported by the engines).
 - pdftitle allows to set the titles in various languages.

## [2022-08-24]

### Changed
 - internal cleanup
 - prepare for change in l3backend object handling
  
### Fixed
 - ensure that pdfproducer is set with hyperxmp

## [2022-07-08]
### Fixed 
  - link detection if french is active (issue #28)
  - loop with \url if french is active
  - remove pdfaid-rev is standard is less than A-4 (issue #33)
  - quotes in messages are more consistent (PR #37)
  
### Changed  
  - removed protection code for utf8 as they are now protected anyway (fixed #28 and loop)
  
## [2022-06-14]
### Fixed 
  - avoid errors with spot color models
  - opacity of fontspec (issue #30)
### Added
  - firstaid support for spot colors for open type fonts    
  

## [2022-05-11]

### Added
 - allow standard pdf/A-4
 - check requirement for max-pdfversion
 - add requirement for Info dictionary
 - load tagpdf-base if it exists to provide the
   tagging commands.
 
### Fixed
 - Support/firstaid for colorspace package
 - Support for metadata with hyperxmp and xetex
 
 
## [2022-04-14]
### Fixed
 - l3pdffield-radiobutton: handling of Opt array.
 
### Added
 - l3pdffield-radiobutton: inunison key.  

## [2022-03-16]

### Added
 - \pdfmeta_set_regression_data: for regression tests.
 
## [2022-02-16]

### Fixed
 - transition for directions was wrong
 
### Added
 - preliminery support for new OR code 

## [2022-01-28] 

### Changed 
 - adapted the color patch to the changes in (x)color.sty (mathcolor)
 - documentation uses new doc version (so needs currently latex-dev to compile)
  
### Fixed

 - xcolor patch failed with color names containing active chars (e.g. from french)
 - clipping of xform object on the dvips route (issue #25)

## [2022-01-13]
### Changed
 - the keys `firstaidoff` and `pdfmanagement` should now be set with the `debug` key.
  - `testphase` will now load files from the latex-lab bundle. This requires a current 
    latex-dev: LaTeX2e <2022-06-01> pre-release-1.  
 -  new values for `testphase`: `phase-I` and `phase-II`. 
    `phase-I` will loaded tagpdf and activate tagging and interword spaces, `phase-II will
    additionally activate paratagging. The value `tagpdf` for the `testphase` 
    key has been deprecated. It will not error for some time and has been aliased to 
    `phase-II`, but it is recommended to use the new values `phase-I` and `phase-II` instead.     
 - renamed `\DeclareDocumentMetadata` to `\DocumentMetadata` (the older version is still provided)
   to follow the development in latex-dev.
 
### Fixed

 - adapted the file hooks to the changes in LaTeX
 - small bugs

### Removed

 - the `activate` key has been removed, its function is integrated in the testphase key. 

### Added 
 - preliminary support for structure destination to prepare for binary changes in texlive 2022
 
## [2021-08-28]
### Changed
 - colorscheme 'original' has been renamed to 'primary-colors'
 - color key is overwritten to use l3color

### Added
 - preliminary support for standard A-2a and A-3a 
 - output patches to firstaid to support interruption of links
   and tagging of paragraphs with page splits.

## [2021-07-31]
### Added 
 - \IfPDFManagementActiveTF as copy of `\pdfmanagement_if_active:TF
 - \PDFManagementAdd as copy of `\pdfmanagement_add:xxx`
 - Support for name trees /AP and /JavaScript in Catalog/Names
 - Support to add user file names to /EmbeddedFiles (beside the existing 
   way with automatically generated names)
 - if xcolor is loaded the colors it predefines are now predefined also for l3color  

### Changed 
 - Implementation of the /EmbeddedFiles name tree, it is now more in line
   with the other name trees.
 - \Form no longer creates xform objects -- this affected spacing and produced
   empty pages. The xform objects are now only created if fields are used.  
   
## [2021-07-21]
### Added
 - key `testphase` to \DeclareDocumentMetadata to load testphase packages like
   tagpdf, ptagging and headings
 - key `activate` to \DeclareDocumentMetadata to activate e.g. tagging. 
 - key `debug` with para=show, log=XX or uncompress as values.
 - l3pdfxform: support for dvips
  
### Changed 
 - a LaTeX format/L3 layer that loads l3color is now required
    
### Fixed
 - argument order in \hrefrun was wrong. filename should be the first argument.
 - xcolor firstaid: svgnames could no longer be loaded due to changes in l3color.
   

## [2021-06-29]

### Fixed
 - small bug in l3ref-tmp.sty
 
## [2021-06-14]
### Added
 - l3pdffile: \pdffile_filespec:nnn to create a filespec dictionary
 - l3pdffield: sortkey and code for calculate actions
 - l3pdffield-radiobutton, a module for radiobuttons
 - l3pdffield-pushbutton, a module for pushbuttons
 - l3pdffield-choice, a module for choice fields
 - l3pdffield-action, a module for reset/submit/import actions
 - l3pdffield: \pdffield_annot_ref_last:, needed for tagging in OBJR object. 
 - \pdffile_filespec:nnn to create a filespec dictionary
 - l3pdfmeta, ltdocinit: support for pdf A-2u and A-3u
 - l3pdffield: tagging support for form fields
 
### Fixed
 - l3pdftools: utf8/URI didn't handle "?" 
 - l3pdffield: encoding of value in l3pdffield-textfield 
 - l3pdffield: encoding of value of TM and TU key 
 - utf8/URI in l3pdftools didn't handle ? 
 - option handling of pdflscape-ltx
 - distiller failed due to empty /PAGES
 - small bugs in the hyperref driver

### Changed
 - l3pdffield: handling of ECMAscript in /AA keys 
 - no longer force unicode in the generic hyperref driver as
   it is the default where sensible anyway and clashes with platex. 
 
## [2021-05-14]
### Fixed 
 - xcolor patch for [ps] type used in pstricks
 - value of citecolor wasn't expanded (errored with tcolorbox)
 - \url, \href, \hrefurl, \hrefrun and \hrefpdf leaves now vmode
 - handling of pdfauthor, pdftitle and pdfsubject in hyperxmp patch 
 
### Changed 
 - the module for formfield and checkboxes has been in part rewritten to 
   better fit to the new module for textfield. 
   Keys and documentation has been extended. 
 
### Added
 - generic command hooks have been added to \url, \href, \hrefurl,
   \hrefrun and \hrefpdf. Their use require a latex 2021-06-01.
 - dictionaries widget/AA, widget/AP, widget/MK and widget/BS in l3pdfannot. 
 - a module for textfields 
      
## [2021-03-17]

### Fixed
- \pdffield-setup:nn
- ocgcolorlinks test for dvips (pdf version is not available)

### Changed
- \pdf_name_from_unicode_e:n: use cvn operator with dvips
- \url: it has an optional argument through which protocol, formatting command and encoding
  can be changed
- \href can use the url arguments too.  
- \hyper@linkfile (GoToR links) now uses a filespec dictionary. This improves the
  support for non-ascii files names.   

### Added
- \hrefurl, \hrefrun, \hrefpdf for better support of non-ascii input and 
  default options, see the hyperref-generic documentation. 

## [2021-03-07]

### Added
- \pdfannot_widget_box:nnnn 
- \pdfannot_dict_use:n
-  module l3pdffield for form fields. Currently it only supports checkboxes.

### Changed
-

### Removed
- \pdfannot_box:nnnnn: Concept to mix manual specs and dictionaries is wrong.
  This can lead to duplicate entries in the dictionaries.
  
### Fixed
- Wrong default setting of \g_@@_active_bool (issue #13)
- l3pdffile: Wrong casing: FileSpec -> Filespec   
- beamer linkbordercolor error (workaround in firstaid)

## [2021-02-23]

First release
