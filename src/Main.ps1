﻿<#
 .Synopsis
  黑沙美服汉化文本工具
   
   DateLastModified: 20200314
#>


$dlenloc="http://bit.ly/3aUASn3"
$dltwloc="http://bit.ly/2TUa1SJ"
$dlscloc="http://bit.ly/2WgGOCS"
$dlfont="http://bit.ly/2Qgo6HD"


# Functions
. "./Download.ps1"
. "./TestPath.ps1"

do
{
# Clear the console pane
Clear-Host

# Display menu
Get-Content .\Menu.txt

Write-Host "        ----------------------------------------------------"
$Select = Read-host "        请选择上面【 1,2,3,4 】中一个选项输入"

#Create 3 blank lines to separate output from menu using for loop
for($i=0;$i -le 2;$i++){Write-host " "}

switch($select)
{

1 
{ 
TestPath
Download $dlenloc $temp\languagedata_en.loc
Download $dlfont $temp\pearl.ttf
Copy-Item -Force  $temp\languagedata_en.loc $ads\languagedata_en.loc
Copy-Item -Force $temp\pearl.ttf $font\pearl.ttf
}
2 
Download $dlfont $temp\pearl.ttf
Download $dlscloc $temp\languagedata_en_tw_cnhope.loc
Copy-Item -Force $temp\pearl.ttf $font\pearl.ttf
Copy-Item -Force $temp\languagedata_en_tw_cnhope.loc $ads\languagedata_en.loc
}

3 
{
TestPath
Download $dlfont $temp\pearl.ttf
Download $dltwloc $temp\languagedata_tw.loc
Copy-Item -Force $temp\pearl.ttf $font\pearl.ttf
Copy-Item -Force $temp\languagedata_tw.loc $ads\languagedata_en.loc
}

4 
{
TestPath
Download $dlenloc $temp\languagedata_en.loc
Remove-Item -Force -Recurse "prestringtable\"
}
default {"无效参数，请重选"}
}

}while($true)