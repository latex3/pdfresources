# Changelog
All notable changes to the `pdfmanagement-testphase` bundle since the 
first release 0.95a, 2021-02-23 will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
this project uses date-based 'snapshot' version identifiers.

## [Unreleased]
### Added
 - \pdffile_filespec:nnn to create a filespec dictionary
 - sortkey and code for calculate actions
### Fixed
 - encoding of value in l3pdffield-textfield 
 - encoding of value of TM and TU key
### Changed
 - handling of ECMAscript in /AA keys 
 

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
