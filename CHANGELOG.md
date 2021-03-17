# Changelog
All notable changes to the `pdfmanagement-testphase` bundle since the 
first release 0.95a, 2021-02-23 will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
this project uses date-based 'snapshot' version identifiers.

## [Unreleased]

### Fixed
- \pdffield-setup:nn

### Changed
- \pdf_name_from_unicode_e:n: use cvn operator with dvips
- \url: it has an optional argument and protocol, formatting command and encoding
  can be changed.
- \hyper@linkfile (GoToR links) now use a filespec dictionary. This improves the
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
