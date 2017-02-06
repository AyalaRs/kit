@echo off
:rep
set name=ollydbg

:rc
.\bin\rc.exe /I"inc" __rsrc.rc
.\bin\cvtres.exe /machine:ix86 __rsrc.res

set /p k=y/n:

if /i "%k%"=="n" goto link

.\bin\ML.EXE /c /coff /Cp /nologo /WX /Zf /Zi /I".\inc" %name%.Asm %name%.obj
:link

.\bin\LINK.EXE /MACHINE:IX86 /SUBSYSTEM:WINDOWS /HEAP:0x100000,0x1000 /STACK:0x100000,0x2000 /DEBUG /DEBUGTYPE:CV   /LIBPATH:".\lib" %name%.obj __rsrc.obj /OUT:%name%.exe

:next
pause
cls
goto rep
