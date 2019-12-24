clear-host
import-module ActiveDirectory
$date = get-date -format MM/dd/yy
$user = read-host "Enter User to be Disabled"
$userDN = (Get-ADuser -identity $user).distinguishedName
$pass = convertto-securestring "Disabled@2017" -AsPlainText -Force
Set-ADAccountPassword $user -Reset -newpassword $pass
Set-Aduser $user -Description "Disabled on $date"