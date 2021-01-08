@echo off
setlocal
:: set location

set year=%date:~0,4%
set month=%date:~5,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~8,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%

set current_dttm=%year%%month%%day%%hour%%min%%secs%

set dll_dir= "C:\DEV\"
set deploy_client_dir= "C:\DEV\Deploy"


:: mkdir
mkdir %deploy_client_dir%

:: copy
copy %dll_dir%\*.dll %deploy_client_dir%

:: rename
rename %deploy_client_dir%\*.dll *.deploy


### 년월일 시분초 세팅
set year=%date:~0,4%
set month=%date:~5,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~8,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set hour=%time:~0,2%
echo %hour%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%

set current_dttm=%year%%month%%day%%hour%%min%%secs%




### reference
https://stackoverflow.com/questions/774175/show-a-popup-message-box-from-a-windows-batch-file


