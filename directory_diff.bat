@echo off

if not "%1"=="" (
  SET PARAM1=%1
)
if not "%2"=="" (
  SET PARAM2=%2
) else (
  SET PARAM2=HEAD
)

if "%1"=="" (
  echo ERROR:Need parameter!
)

git difftool --dir-diff %PARAM1% %PARAM2%
