@echo off
set "FirefoxVersion=37"
rem Get path of installed Firefox directly from Windows registry.
for /F "skip=2 tokens=1,2*" %%A in ('%SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe" /v Path 2^>nul') do (
    if "%%A"=="Path" (
        set "FirefoxFolder=%%C"
        goto CheckFirefox
    )
)

:InstallFirefox
echo Installing Firefox ...

:UpdateFireFox
\\***\***\Firefox-Setup-%FirefoxVersion%.exe -ms
goto :EOF

:CheckFirefox
if not exist "%FirefoxFolder%\firefox.exe" goto InstallFirefox

rem Check if version of Mozilla Firefox starts with defined number.
rem The space at beginning makes sure to find the major version number.
"%FirefoxFolder%\firefox.exe" -v | %SystemRoot%\System32\more | %SystemRoot%\System32\find.exe " %FirefoxVersion%" >nul
if errorlevel 1 (
    echo Updating Firefox to version %FirefoxVersion% ...
    goto UpdateFireFox
)

echo Firefox with version %FirefoxVersion% is already installed.
