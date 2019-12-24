$num= (Import-csv Asure.csv).RecordID
$fn= Import-csv Asure.csv
foreach ($user in $fn) {
get-aduser -filter "GivenName -like '$($user.First_Name)'" -Properties ipphone | % {set-ADuser $_ -Replace @{ipPhone="$($user.RecordID)"}}
}

