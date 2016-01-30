# FAR Archiver Setup #

After [downloading](http://code.google.com/p/vanrijkom-flashlibs/downloads/list) the archiver, unpack the version for your operating system to a folder of your choice. No more than that is strictly required to start using the archiver, but things will work best if the tool is on your OS's search path:

## OS-X ##
  * Open Terminal
  * Navigate to the directory where you placed `far`
  * Issue `sudo ln far /usr/bin/far`
  * Change to another directory and issue `far`. Far's help text will be printed to screen.

## Windows XP ##
  * Start
  * Right-click `My Computer`
  * Select `properties`
  * Select `advanced`
  * Click `Environment Variables`
  * Select the 'path' system variable
  * Click `Edit`
  * append `;your\directory\containing\far.exe` at the end of the text shown at `variable value`. Do **not** include `far.exe` - enter only the directory `far.exe` resides in
  * Close all property windows, (re)start a command line prompt and issue `far.exe`. Far's help text will be printed to screen.



