$a = (Get-Host).UI.RawUI 
$a.WindowTitle = "三( `・ω・)＼＼|| Powershell//／／(・ω・´ )三"

Write-Host "                          ＿人人人人人人人＿"
Write-Host "                          ＞　PowerShell　＜"
Write-Host "                          ￣Y^Y^Y^Y^Y^Y^Y￣"
Write-Host ""

Write-Host "                   Execution Policy:" (Get-ExecutionPolicy) -ForegroundColor "yellow"

function Prompt {
    if ($?) {
        Write-Host "――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――" -ForegroundColor "Yellow"
        Write-Host "["(Split-Path (Get-Location) -Leaf)"](*'-')"  -NoNewLine -ForegroundColor "Cyan"
        return "> "
    } else {
        Write-Host "――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――" -ForegroundColor "Yellow"
        Write-Host "["(Split-Path (Get-Location) -Leaf)"](*;-;)"  -NoNewLine -ForegroundColor "Red"
        return "> "
    }
}

Set-Alias grep 'Select-String'
Set-Alias touch 'C:\Users\Ryotaro.TSUDA\Documents\WindowsPowerShell\touch.ps1'
Set-Alias code 'code-insiders'
Set-Alias tcode 'C:\Users\Ryotaro.TSUDA\Documents\WindowsPowerShell\touchcode.ps1'

