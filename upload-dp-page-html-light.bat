@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /command ^
    "open ftp://t13441:q3C1cWkl@hostde3.fornex.org/" ^
    "lcd D:\YandexDisk\Work\d-page\d-page-html-light" ^
    "cd /public_html/dpronin.com" ^
    "put -neweronly *" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%