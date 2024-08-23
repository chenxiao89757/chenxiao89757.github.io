@echo off&setlocal enabledelayedexpansion
dir /b /s /o:n /a:a > tree.txt
if exist temp.txt del temp.txt
set find=%CD%
set replace=
for /f "tokens=*" %%a in (tree.txt) do (
set var=%%a
set var=!var:%find%=%replace%!
set var=!var:\=%replace%!
set "var=^![](/images/2024/!var!)!"
echo.!var!>>temp.txt
)
move temp.txt tree.txt