@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /command ^
    "open ftp://t13441:q3C1cWkl@hostde3.fornex.org/" ^
    "lcd D:\YandexDisk\Work\dp" ^
    "cd /public_html/dpronin.com" ^
    "put -neweronly -rawtransfersettings[1] ExcludeHiddenFiles=1 *" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%