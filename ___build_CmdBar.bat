@echo off
set name=CmdBar
.\bin\ML.EXE /c /coff /Cp /nologo /I".\inc" %name%.Asm %name%.obj
.\bin\LINK.EXE /SUBSYSTEM:WINDOWS /RELEASE /DLL /DEF:%name%.def /LIBPATH:".\lib" %name%.obj /OUT:%name%.dll
del .\%name%.exp
del .\%name%.obj
del .\%name%.lib
pause
