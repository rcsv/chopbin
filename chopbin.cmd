@echo off
REM ----------------------------------------------------------------------
REM CHOP BINARY FILE FOR WINDOWS
REM @author rcsvpg rcsvpg@outlook.com
REM
REM How to Use
REM chopbin.cmd <filename> [filesize]
REM <filename>
REM [filesize] ::= 4096000
REM ----------------------------------------------------------------------

setlocal
if not defined separate_size (
    set /a separate_size=4096000
)

set ddf=%TEMP%\cabprof.ddf
(echo %1) > "%ddf%"

@echo on

echo get start chop files
MAKECAB /d MaxDiskSize=%separate_size% /d RptFileName=NUL /d DiskDirectoryTemplate="%~n1" /f "%ddf%"
echo DONE


