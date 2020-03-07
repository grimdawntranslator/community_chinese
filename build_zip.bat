@echo off

set CurDir=%~dp0
set CurDir=%CurDir:~,-1%
for %%a in ("%CurDir%") do set DirName=%%~nxa
set Zip=%CurDir%\tools\7z.exe
set ZipFile=%CurDir%\%DirName%.zip

if exist "%ZipFile%" del "%ZipFile%"

pushd "%CurDir%\translation" > nul
call "%Zip%" a -tzip "%ZipFile%" *
popd > nul
