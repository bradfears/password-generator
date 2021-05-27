$PasswordLength=20
$NonAlphaChar=5

Add-Type -AssemblyName 'System.Web'
[System.Web.Security.Membership]::GeneratePassword($PasswordLength,$NonAlphaChar)
