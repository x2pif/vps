Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Youtube1234" -Force)

Get-LocalUser -Name "Administrator" | Enable-LocalUser 

Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip

tar xf ngrok.zip

Copy ngrok.exe C:\Windows\System32

cmd /c echo ./ngrok.exe authtoken "25KuTeQj4525d48J66rbz8nzD2A_5Kg5iYo6FNv3pbRm8VLdY" >a.ps1

cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1

cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1

.\a.ps1
