dotnet ".\FaToolBox\Files\MyToolBox.exe" --version >>Version.txt
iscc FaToolBox.iss /O".\FaToolBox\"  /D"SourceDirection=.\FaToolBox\Files\"  /D"LicenseFileName=.\FaToolBox\Files\LICENSE.txt" /D"MyAppVersion=1.2"

