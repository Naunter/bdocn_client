﻿<#
 .Synopsis
  黑沙美服汉化文本工具
   
   DateLastModified: 20200314
#>

# Test Path
function TestPath
{
$tsfont = Test-Path $font
if ( $tsfont -eq "True" )
{
Out-Null
}
else
{
mkdir -Force $font | Out-Null
}
$tsads = Test-Path $ads
if ( $tsads -eq "True" )
{
Out-Null
}
else
{
mkdir $ads | Out-Null
}
}