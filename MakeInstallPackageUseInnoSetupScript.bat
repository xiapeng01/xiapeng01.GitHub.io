copy /Y C:\Users\С��\Desktop\Publish\FaToolBox\* .\FaToolBox\Files\ 

:: ����һ������
set myVariable=1.5

for /f  %%a in ('.\GetVersion\GetVersion.exe D:\project\xiapeng01.GitHub.io\FaToolBox\Files\MyToolBox.exe') do set version=%%a

echo %version%
 
iscc FaToolBox.iss /O".\FaToolBox\"  /D"SourceDirection=.\FaToolBox\Files\"  /D"LicenseFileName=.\FaToolBox\Files\LICENSE.txt" /D"MyAppVersion=%version%"

