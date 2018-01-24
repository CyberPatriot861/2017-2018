# *__THIS SHOULD NOT BE USED. USE THE COMPLETE FORKED REPOSITORY INSTEAD__*
# 2017-2018
1. README
2. Read Forensic Questions
3. Answer questions
4. Users
5. Change all the passwords
6. Set password policies
  * Minimum length (8)
  * Minimum complexity (must have number, capital, etc.)
  * Maximum lifetime (30 for admins, 90 for others)
  * Minimum lifetime (7-10)
7. Set Account Lockout Policy
  * 5 invalid attempts
  * 30 minute lockout
  * Reset account lockout counter after 30 minutes
8. Manage Users
  * Administrators -> Users
  * Delete unauthorized users
  * Keep files of the deleted users
9. Update
  * Web browser
```batch
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
Core files (OS)
sudo apt-get update && sudo apt-get full-upgrade
@Echo off
For %%# in (*.msu) Do (
    Echo: Installing update: %%#
    Wusa "%%#" /quiet /norestart
)
Echo Windows Update finished.
Pause&Exit
```
  * Scenario-specific applications (Notepad++, backup web browser, etc.)
10. Unauthorized files
  * .MP3, .MP4, .MOV, .PNG, .JPEG, .JPG, .WAV
  * Search downloads folder
  * “Hacking.exe”
  * Delete games
11. Uninstall SAMBA (137)
12. Audit Policies
13. Firewall
  * Block HTTP (80), TELNET (23), TCP, SAMBA (137, 138, 139, 445) 
  * Block all incoming connections
  * Possibly download an external firewall (AVG, McAffeeeeeeeeeee)
  * **Ports to block**
    * Telnet - TCP, 23SNMP - UDP, 161 and 162
    * SAMBA - TCP, 139 and 445
    * SAMBA - UDP, 137 and 138
    * RDP - TCP and UDP, 3389 and 3390
    * LDAP - TCP and UDP, 389
    * FTP - TCP, 20 and 21
