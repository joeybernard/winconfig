Push-Location

cd $Env:Home\repos

Get-ChildItem -attributes directory |
foreach-object {
   echo "=========="
   Write-Host "Pulling " $_.FullName
   cd $_.FullName
   git pull
   cd ..
}

Pop-Location
