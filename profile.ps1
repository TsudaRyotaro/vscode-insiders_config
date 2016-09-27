$a = (Get-Host).UI.RawUI 
$a.WindowTitle = "三( `・ω・)＼＼|| Powershell//／／(・ω・´ )三"
	
$a.ForegroundColor = "White"
$a.BackgroundColor = "Black"
$b = $a.WindowSize
$b.Width = 80
$b.Height = 44
$a.WindowSize = $b
Write-Host "                          ＿人人人人人人人＿"
Write-Host "                          ＞　PowerShell　＜"
Write-Host "                          ￣Y^Y^Y^Y^Y^Y^Y￣"
Write-Host ""

Write-Host "                   Execution Policy:" (Get-ExecutionPolicy) -ForegroundColor "yellow"

Set-Location ~

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
Set-Alias touch 'C:\yourDir\touch.ps1'
Set-Alias code 'code-insiders'
Set-Alias tcode 'C:\yourDir\touchcode.ps1'

