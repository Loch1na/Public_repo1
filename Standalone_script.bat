@ECHO 
set cdate="getmac"
for /f %%i in ('%cdate%') do set result=%%i 
mkdir c:\%result%
cd c:\%result%
ipconfig /all>IP.txt
systeminfo>system.txt
net user>user.txt
net start>services.txt
wmic product get name,version>installed_software.txt
wmic path Win32_VideoController get CurrentHorizontalResolution,CurrentVerticalResolution>resolution.txt
wmic partition list brief>harddisk.txt
wmic desktopmonitor get Caption, MonitorType, MonitorManufacturer, Name>monitor.txt
cd c:\

echo MSGBOX "Script Run Successfully" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

EXIT
