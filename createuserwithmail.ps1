$fn = read-host "Enter the First name"
$ln = read-host "Enter the Last name"
$ou = read-host "Enter the Facility name"
$b21dep = 0
$bksdep = 0
$ncsdep = 0
$jrbdep = 0 

switch ($ou)
{b21 {
$b21dep = read-host "Williamsbridge-Departments:Select One of the following:
1. Administration
2. Building Operations
3. Child Care
4. Family Services
5. Safety"}

bks{

$bksdep = read-host "Prospect-Departments:Select One of the following:
1. Administration
2. Building Operations
3. Child Care
4. Education
5. Family Services
6. Family Support
7. Safety"}

jrb{

$jrbdep = read-host "Saratoga-Departments:Select One of the following:
1. Administration
2. Building Operations
3. Child Care
4. Education
5. External Affairs
6. Family Services
7. Recreation
8. Safety"
}
ncs{
$ncsdep = read-host "Central_Office-Departments:Select One of the following:
1. Administration
2. External Affairs
3. Finance
4. HFH Camps
5. HR
6. Management
7. Payroll"
}
default {"Invalid Entry 1"}
}

if ($b21dep -ne "0")
{
switch ($b21dep)
{1 {$dep = "Administration (1000)"}
2 {$dep = "Building Operations (5000)"}
3 {$dep = "Child Care (3000)"}
4 {$dep = "Family Services (2000)"}
5 {$dep = "Safety (6000)"}
default {"Invalid Entry 2"}
}
}



if ($bksdep -ne "0")
{
switch ($bksdep)
{1 {$dep = "Administration (1000)"}
2 {$dep = "Building Operations (5000)"}
3 {$dep = "Child Care (3000)"}
4 {$dep = "Education (7000)"}
5 {$dep = "Family Services (2000)"}
6 {$dep = "Family Support (7000)"}
7 {$dep = "Safety (6000)"}
default {"Invalid Entry 3"}
}
}

if ($jrbdep -ne "0")
{
switch ($jrbdep)
{1 {$dep = "Administration (1000)"}
2 {$dep = "Building Operations (5000)"}
3 {$dep = "Child Care (3000)"}
4 {$dep = "Education (7000)"}
5 {$dep = "External Affairs"}
6 {$dep = "Family Services (2000)"}
7 {$dep = "Recreation (4000)"}
8 {$dep = "Safety (6000)"}
default {"Invalid Entry4"}
}
}

if ($ncsdep -ne "0")
{
switch ($ncsdep)
{1 {$dep = "Administration"}
2 {$dep = "External Affairs"}
3 {$dep = "Finance"}
4 {$dep = "HFHCamps"}
5 {$dep = "HR"}
6 {$dep = "Management"}
7 {$dep = "Payroll"}
default {"Invalid Entry5"}
}
}

$mgr = read-host "Enter Manager's name"
$title = read-host "Enter the title of the person"

$un = read-host "Enter username"
$password = "hfh@1234" | ConvertTo-SecureString -AsPlainText -Force

$b21= @{
"name" = "$fn $ln"
"userprincipalname" ="$un"
"samaccountname" = "$un"
    "Manager" = $mgr
    "Company" = "Homes for the Homeless"
    "Country" = "US"
    "office" = "Williamsbridge family inn"
    "City" = "Bronx"
    "State" = "New York"
    "Postalcode" = "10469"
    "StreetAddress" = "946 East 211th Street"
    "Title"= $title
    "Enabled" =$true
    "Department" = $dep
    "DisplayName" = "$fn $ln"
    "fax" = "718.654.0851"
    "emailaddress" = "$un@hfhnyc.org"
    "GivenName" = $fn
    "Surname" = $ln
    "Homepage" = "www.hfhnyc.org"
    "AccountPassword" = $password
    "OfficePhone" = "718.654.2170"
    "path" = "OU=$dep,OU=Users,OU=$ou,OU=HFHNYC,DC=hfhnyc,DC=org"
    
}

$bks= @{
"name" = "$fn $ln"
"userprincipalname" ="$un"
    "Manager" = $mgr
"samaccountname" = "$un"
    "Company" = "Homes for the Homeless"
    "Country" = "US"
    "office" = "Prospect family inn"
    "City" = "Bronx"
    "State" = "New York"
    "Enabled" =$true
    "Postalcode" = "10455"
    "StreetAddress" = "730 Kelly Street"
    "Title"= $title
    "Department" = $dep
    "DisplayName" = "$fn $ln"
    "fax" = "718.617.0281"
    "GivenName" = $fn
    "Surname" = $ln
    "emailaddress" = "$un@hfhnyc.org"
    "OfficePhone" = "718.617.6100"
    "AccountPassword" = $password
    "Homepage" = "www.hfhnyc.org"
    "path" = "OU=$dep,OU=Users,OU=$ou,OU=HFHNYC,DC=hfhnyc,DC=org"
    
}
$jrb= @{
"name" = "$fn $ln"
"userprincipalname" ="$un"
"samaccountname" = "$un"
    "Manager" = $mgr
    "Company" = "Homes for the Homeless"
    "Country" = "US"
    "office" = "Saratoga family inn"
    "City" = "Jamaica"
    "State" = "New York"
    "Postalcode" = "11434"
    "StreetAddress" = "175-15 Rockaway Blvd"
    "Title"= $title
    "Enabled" =$true
    "Department" = $dep
    "DisplayName" = "$fn $ln"
    "fax" = "718.244.0685"
    "Homepage" = "www.hfhnyc.org"
    "emailaddress" = "$un@hfhnyc.org"
    "OfficePhone" = "718.244.0670"
    "GivenName" = $fn
    "Surname" = $ln
    "AccountPassword" = $password
    "path" = "OU=$dep,OU=Users,OU=$ou,OU=HFHNYC,DC=hfhnyc,DC=org"
    
}

$ncs= @{
"name" = "$fn $ln"
"userprincipalname" ="$un"
"samaccountname" = "$un"
    "Manager" = $mgr
    "Company" = "Homes for the Homeless"
    "Country" = "US"
    "office" = "Central Office"
    "City" = "New York"
    "State" = "New York"
    "Postalcode" = "10003"
    "Enabled" =$true
    "StreetAddress" = "36 Cooper Square, FL 3"
    "Title"= $title
    "Department" = $dep
    "DisplayName" = "$fn $ln"
    "emailaddress" = "$un@hfhnyc.org"
    "fax" = "212.529.7698"
    "Homepage" = "www.hfhnyc.org"
    "OfficePhone" = "212.529.5252"
    "GivenName" = $fn
    "Surname" = $ln
    "AccountPassword" = $password
    "path" = "OU=$dep,OU=Users,OU=$ou,OU=HFHNYC,DC=hfhnyc,DC=org"
    
}

$body ="Hello,

User Active please find the credentials below.

User Name: $un
Password: hfh@1234

Please login to his account and provide us the computer name to  configure his account

Thanks,
IT Support
"


function send-mail($body, $addressto)
{
    $user = "isupport@hfhnyc.org"
    
    #$pass = ConvertTo-SecureString -String "Disabled@7102" -AsPlainText -Force
    #$cred = New-Object System.Management.Automation.PSCredential $user, $pass
    $mailParam = @{
        To = $addressto
        From = "isupport@hfhnyc.org"
        Subject = "test"
        Body = $body
        SmtpServer = "smtprelay.hfhnyc.org"
        Port = 25
        #Credential = $cred
    }
    Send-MailMessage @mailParam 

}

switch ($ou)
{
b21 { New-ADuser @b21 ;write-host "User successfully created";send-mail -addressto "isupport@hfhnyc.org"}
ncs { New-ADuser @ncs;write-host "User successfully created";send-mail -addressto "isupport@hfhnyc.org"}
bks { New-ADuser @bks;write-host "User successfully created";send-mail -addressto "isupport@hfhnyc.org"}
jrb { New-ADuser @jrb;write-host "User successfully created";send-mail -addressto "isupport@hfhnyc.org"}
default {"No such OU exists"}
}






