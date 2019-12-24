workflow do-stuff {
  $nwname = read-host "Enter the New computer name:"
  add-computer -computername (get-childitem -path env:computername) -Domain "hfhnyc.org" -Newname "$nwname" -credential hfhnyc.org\djoin
  Restart-Computer -Wait
$un = dir env:username
  Copy-item -recurse -path '\\hfhnyc.org\shares$\NCSTeamData\Common\IT\Software\software installation' -destination 'C:\Users\$un\Downloads\software'
  start-process 'C:\Users\$un\Downloads\software\AdobeAIRInstaller.exe' -ArgumentList '-silent'
  start-process 'C:\Users\$un\Downloads\software\Firefox Installer.exe' -ArgumentList '-silent'
  start-process 'C:\Users\$un\Downloads\software\JavaSetup8u161.exe' -ArgumentList '/s'
  start-process 'C:\Users\$un\Downloads\software\Shockwave_Installer_Slim.exe' -ArgumentList '-silent'
  start-process 'C:\Users\$un\Downloads\software\setup.exe' -ArgumentList '-silent'
  Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" –Value 0
  Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
  Enable-NetFirewallRule -Group "@FirewallAPI.dll,-28502"

}
do-stuff
