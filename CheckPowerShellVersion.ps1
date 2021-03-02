# tried to give feedback here - https://docs.microsoft.com/en-us/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed - but they 
# did not want this script yet. Cheers.
$releaseKey = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full").Release

if ($releaseKey -ge 528040)
{
    Write-Host "4.8 or later";
    exit
}
if ($releaseKey -ge 461808)
{
    Write-Host "4.7.2";
    exit
}
if ($releaseKey -ge 461308)
{
    Write-Host "4.7.1";
    exit
}
if ($releaseKey -ge 460798)
{
    Write-Host "4.7";
    exit
}
if ($releaseKey -ge 394802)
{
    Write-Host "4.6.2";
    exit
}
if ($releaseKey -ge 394254)
{
    Write-Host "4.6.1";
    exit
}
if ($releaseKey -ge 393295)
{
    Write-Host "4.6";
    exit
}
if ($releaseKey -ge 379893)
{
    Write-Host "4.5.2";
    exit
}
if ($releaseKey -ge 378675)
{
    Write-Host "4.5.1";
    exit
}
if ($releaseKey -ge 378389)
{
    Write-Host "4.5";
    exit
}
else
{
    // This code should never execute. A non-null release key should mean
    // that 4.5 or later is installed.
    Write-Host "No 4.5 or later version detected"
}
