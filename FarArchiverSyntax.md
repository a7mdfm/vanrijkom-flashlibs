# Far Archiver Syntax #

This is a dump of the returned help content displayed by the archiver tool on running it without any arguments:

```
FAR (Flash Archive) 0.1 - (C) 2007, Edwin van Rijkom
http://www.vanrijkom.org

About: 
  This tool can build, read and modify FAR formatted files. FAR files
  are ZLIB compressed archives readable by the Adobe Flash (tm) Player
  (v.9+) using the FAR ActionScript 3 library.

Add or overwrite file(s): 
  far archive-path source-file-1 [.. source-file-n]
  far archive-path source-folder-1 [.. source-folder-n]
  far archive-path source-file-1 source-file-1 [..]

Add or overwrite file(s), uncompressed: 
  far -u archive-path source-file-1 [.. source-file-n]

Build archive from a manifest file: 
  far -m manifest-path

List files contained in archive:
  far -l archive-path

Create manifest from archive:
  far -n archive-path

Remove file(s) from archive:
  far -r archive-path index-1 [... index-n]

Extract file(s) from archive:
  far -e archive-path index-1 [.. index-n]

Extract all contents from archive:
  far -x archive-path

If the 'archive-path' argument points to a non-existing file, a new
archive file is created. Other options:

 -.svcf

  s (Silent):
    Do not show copyright header

  v (Verbose):
    Inform about operation steps and progress

  c (Crop paths):
    By default, on adding files to the archive, they are indexed by their
    respective source paths. With Crop enabled, only the file name portion 
    of the path is used as the file's index. On adding folders, the relative
    tree structure persists.

  f (Forward slash - Windows):
    Interpret forward-slashes as path segment separators instead of
    back-slashes
```