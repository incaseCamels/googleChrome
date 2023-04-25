$apiResult = (invoke-webrequest https://versionhistory.googleapis.com/v1/chrome/platforms/win/channels/stable/versions).content | ConvertFrom-Json

$installed = (Get-Item "C:\Program Files\Google\Chrome\Application\chrome.exe").VersionInfo.FileVersion

$latest = $apiResult.versions[0].version

#$latest = "112.0.5615.147" #test

"================Latest================="
$latest 
"=======Check Latest Installed=========="

if($installed -eq $latest){

"You have the latest installed" 

$Miliseconds=50000
$Text="You have the latest installed" 
$Title="Google Chrome update"

Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = "$Text"
$balloon.BalloonTipTitle = "$Title" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip($Miliseconds)
}else{
"Perhaps you don't have the latest installed"
$Miliseconds=50000
$Text="There's probably a new google Chrome available"
$Title="Google Chrome update"

Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = "$Text"
$balloon.BalloonTipTitle = "$Title" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip($Miliseconds)
}



$chromeDir = (Gci "C:\Program Files\Google\Chrome\Application")
$count = 0;
foreach($file in $chromeDir){
$searched = $null 
$searched = $file.name | Select-String  "(\d\d\d|\d\d)\.\d\.\d\d\d\d\.(\d\d\d|\d\d)" 
$searched
if($searched -ne $null){
$count++


if($installed -eq $searched){

}else{

"looks to be another downloaded"
$Miliseconds=50000
$Text="looks to be another downloaded " +$searched + "`n"+  $file.LastWriteTime  + "`nRebooting Chrome"
$Title="Google Chrome update"

Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = "$Text"
$balloon.BalloonTipTitle = "$Title" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip($Miliseconds)
$searched

 $chromes = Get-Process -Name chrome | foreach-object{stop-process -Id $_.Id}
 start chrome

}



}}

if($count -eq 1)
{

"Only the one chrome version directory exists"

if($installed -ne $latest){
"A new one is available, but not downloaded"
$Miliseconds=50000
$Text="A new one is available, but not downloaded" + "`n" + $latest 
$Title="Google Chrome update"

Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info 
$balloon.BalloonTipText = "$Text"
$balloon.BalloonTipTitle = "$Title" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip($Miliseconds)



}

}

