$fn = read-host "Enter the First name"
$ln = read-host "Enter the Last name"
$dep = read-host " Choose from one of the following Dep:
1. External Affairs
2. Graphics Team
3. HR
4. Policy"

switch($dep) 
{
1 {  $dep = "External Affairs"}
2 { $dep = "Graphics Team"}
3 {$dep = "HR"}
4 {$dep = "Policy"}
}




$mgr = read-host "Enter Manager's name"
$title = read-host "Enter the title of the person"

$un = read-host "Enter username"
$password = "icph@1234" | ConvertTo-SecureString -AsPlainText -Force



$icph= @{
"name" = "$fn $ln"
"userprincipalname" ="$un"
"samaccountname" = "$un"
    "Manager" = $mgr
    "Company" = "Institute for Children, Poverty and Homelessness"
    "Country" = "US"
    "office" = "Central Office"
    "City" = "New York"
    "State" = "New York"
    "Postalcode" = "10003"
    "Enabled" =$true
    "StreetAddress" = "36 Cooper Square, FL 2"
    "Title"= $title
    "Department" = $dep
    "DisplayName" = "$fn $ln"
    "emailaddress" = "$un@icphusa.org"
    "fax" = "212.358.8090"
    "Homepage" = "www.icphusa.org"
    "OfficePhone" = "212.358.8086"
    "GivenName" = $fn
    "Surname" = $ln
    "AccountPassword" = $password
    "path" = "OU=$dep,OU=Users,OU=NCS,OU=ICPHUSA,DC=icphusa,DC=org"
    
}

New-ADuser @icph ;
write-host "User successfully created"




