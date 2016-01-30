# FAR (FlashArchive) #

## Description ##

FAR consist of two parts:
  * A command-line utility (OSX/Windows/Linux) for creating FAR archives.
  * A set of AS3 classes to read FAR archives from Flash.

Flash 9 can decompress ZLIB compressed arrays of bytes. However, such arrays must be postfixed with an Adler32 checksum. Regular ZIP files don't carry such checksums, and thus ZIP files aren't readable by Flash.

Claus Wahlers and Max Herkender were the first to explore this, which resulted in FZIP (http://codeazur.com.br/lab/fzip/). They work around the Adler32 issue by providing a PHP script that adds Adler32 check-sums.

The FAR file format is somewhat similar to the ZIP format. It also uses ZLIB compression, but instead of using CRC32 check-sums it uses Adler32 so it is 'natively' readable by Flash 9.

Additionally, FAR offers control over what files are put first in the archive so important files get streamed in to Flash before the less important ones do.

Last, the FAR archive builder can build files from an XML formatted 'manifest' that contains archive item source-paths, indices, and attributes.

The archive tool is programmed in haXe. For more info on haxe, see http://www.haxe.org

## Download ##

The current 'all-in-one' release is Beta 0.1 **[revision 1](https://code.google.com/p/vanrijkom-flashlibs/source/detail?r=1)**. Refer to the [downloads section](http://code.google.com/p/vanrijkom-flashlibs/downloads/list) to download.

## More info ##

  * [FAR Archiver setup](FarArchiverSetup.md)
  * [FAR Archiver syntax](FarArchiverSyntax.md)
  * [ActionScript3 API](http://vanrijkom.org/far/index.html)