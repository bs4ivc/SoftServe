$Computer = Read-Host -Prompt "8.8.8.8"
$Ping = Test-Connection -Count 10 -ComputerName $Computer
ForEach ($Result in $Ping) {
  If ($Result.ResponseTime -lt 100) {
    $Result | Select-Object -Property Address,BufferSize,ResponseTime | Write-Host -BackgroundColor Green
  }
  If ( ($Result.ResponseTime -ge 100) -and ($Result.ResponseTime -lt 200) ) {
    $Result | Select-Object -Property Address,BufferSize,ResponseTime | Write-Host -BackgroundColor Yellow
  }
  If ($Result.ResponseTime -ge 200) {
    $Result | Select-Object -Property Address,BufferSize,ResponseTime | Write-Host -BackgroundColor Red
  }
}
