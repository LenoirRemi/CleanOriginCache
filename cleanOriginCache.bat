@echo off
pushd "%programdata%\Origin" || exit /B 1
for /D %%D in ("*") do (
    if /I not "%%~nxD"=="LocalContent" (
    	if /I not "%%~nxD"=="Logs" (
	    rd /S /Q "%%~D"
   	)
    )
)
for %%F in ("*") do (
    del "%%~F"
)
popd
rd /S /Q "%appdata%\Origin"
rd /S /Q "%localappdata%\Origin"