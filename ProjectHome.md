# FAR (FlashArchive) #

A command line tool for creating ZLIB compressed archives that can be streamed in progressively from the Flash player at run-time, using the provided ActionScript 3 API.

FAR is useful when doing Flash projects that involve numerous volatile sources, like for example XML or text files. For example, [Papervision3D](http://papervision3d.org) projects tend contain multiple ASE or Collada mesh models that require a) a lot of loading management code and b) waste quite a bit of bandwith when being send to the client uncompressed.

FAR brings some relieve here by bringing back file sizes with ZLIB compression and taking care of loading resources from the archive in the correct order, notifying the application of its progress.

## More info ##

  * [FAR Wiki home](FAR.md).
  * [FAR Archiver setup](FarArchiverSetup.md)
  * [FAR Archiver syntax](FarArchiverSyntax.md)
  * [ActionScript 3 API Documentation](http://vanrijkom.org/far/index.html)

# SHP (ESRI Shapefile reader) #

An ActionScript 3 library for parsing [ESRI Shapefiles](http://en.wikipedia.org/wiki/Shapefile) from Flash.

## More info ##

  * [SHP Wiki home](SHP.md)
  * [ActionScript 3 API Documentation](http://vanrijkom.org/shp/index.html)

# DBF (XBase file reader) #

An ActionScript 3 library for parsing [XBase (dBase IV, etc.) files](http://en.wikipedia.org/wiki/DBASE) from Flash.

## More info ##

  * [DBF Wiki home](DBF.md)
  * [ActionScript 3 API Documentation](http://vanrijkom.org/dbf/index.html)

# Samples #

  * Mexico. Renders the map of Mexico in run-time using the SHP library, after streaming in the source files from a FAR archive. The DBF library is used to read-in the names of Mexico's major cities from a DBF file:
    * [View sample](http://www.vanrijkom.org/samples/fsd-mexico)
    * [View sources](http://www.vanrijkom.org/samples/fsd-mexico/srcview/)