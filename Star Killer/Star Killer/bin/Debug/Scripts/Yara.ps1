####################################
## Yara scan all running process. 
#
# Created by Sam Arnold on 6/23/17
#
#####################################


Get-Process | ForEach-Object {
    Write-Host $_.name -foregroundcolor cyan;
    Write-Host $_.Path -foregroundcolor yellow;
    Write-Host $_.id -foregroundcolor yellow;
    #./../Pluggys/Yara/
    #.\yarac64.exe    ./../../Pluggys/Yara/Rules/KevTheHermitRulesSet/AAR.yar .

    ./yara64.exe  ./Rules/KevTheHermitRulesSet/AAR.yar $_.id 

  }
  