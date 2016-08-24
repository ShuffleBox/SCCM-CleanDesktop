Param(
    [string]$exclude = ""
    )

#setup excluded files list.
#these will be spared from deletion.
#Entered parameter as comma "," separated list (no spaces)
$excludeList = @()

ForEach ($value in $exclude.Split(","))
{
    $excludeList += $value
}

$desktopState = 0

#Get parts in target directory for comparision.
#Delete if not an excluded value
$dirfiles = Get-ChildItem "${env:PUBLIC}\Desktop"


foreach ($file in $dirfiles)
{
    if($excludeList -contains $file)
    {
    }
    else
    {
       $desktopState += 1
    }
}

If ($desktopState -eq 0)
{
Write-Host "No extra files found"
}