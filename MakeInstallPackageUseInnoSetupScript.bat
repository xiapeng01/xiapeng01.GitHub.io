copy /Y C:\Users\小新\Desktop\Publish\FaToolBox\* .\FaToolBox\Files\ 

:: 定义一个变量
set myVariable=1.5

for /f  %%a in ('.\GetVersion\GetVersion.exe D:\project\xiapeng01.GitHub.io\FaToolBox\Files\MyToolBox.exe') do set version=%%a

echo %version%
 
iscc FaToolBox.iss /O".\FaToolBox\"  /D"SourceDirection=.\FaToolBox\Files\"  /D"LicenseFileName=.\FaToolBox\Files\LICENSE.txt" /D"MyAppVersion=%version%"

