Push-Location

cd $Env:Home\repos

Get-ChildItem -attributes directory |
foreach-object {
   echo "=========="
   Write-Host "Processing " $_.FullName
   cd $_.FullName
   git status -s
   cd ..
}

Pop-Location