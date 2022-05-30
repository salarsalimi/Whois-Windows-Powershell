
Write-Host "Welcome to Whois" -ForegroundColor Green
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$testform = New-Object System.Windows.Forms.Form
$testform.Text = 'Data Entry Form'
$testform.Size = New-Object System.Drawing.Size(400,300)
$testform.StartPosition = 'CenterScreen'
$okb = New-Object System.Windows.Forms.Button
$okb.Location = New-Object System.Drawing.Point(85,130)
$okb.Size = New-Object System.Drawing.Size(75,25)
$okb.Text = 'Add'
$okb.DialogResult = [System.Windows.Forms.DialogResult]::OK
$testform.AcceptButton = $okb
$testform.Controls.Add($okb)

$lb = New-Object System.Windows.Forms.Label
$lb.Location = New-Object System.Drawing.Point(20,40)
$lb.Size = New-Object System.Drawing.Size(240,20)
$lb.Text = 'Please enter the information in text box:'
$testform.Controls.Add($lb)
$tb = New-Object System.Windows.Forms.TextBox
$tb.Location = New-Object System.Drawing.Point(40,80)
$tb.Size = New-Object System.Drawing.Size(240,20)
$testform.Controls.Add($tb)
$testform.Topmost = $true
$testform.Add_Shown({$tb.Select()})
$rs = $testform.ShowDialog()
if ($rs -eq [System.Windows.Forms.DialogResult]::OK)
{
whois.exe $tb.Text
}
Write-Host -NoNewLine 'Press any key to continue...';
$null = Read-Host
# $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");




