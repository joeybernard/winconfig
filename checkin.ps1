Push-Location

cd $Env:Home\repos

Get-ChildItem -attributes directory |
foreach-object {
   echo "=========="
   Write-Host "Pushing " $_.FullName
   cd $_.FullName
   git push
   cd ..
}

Pop-Location
