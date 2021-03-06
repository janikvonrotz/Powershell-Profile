<#
$Metadata = @{
	Title = "Enable Internet Explorer Enhanced Security Configuration"
	Filename = "Enable-InternetExplorerEnhancedSecurityConfiguration.ps1"
	Description = ""
	Tags = "powershell, enable, internet, explorer, enhanced, security, settings"
	Project = ""
	Author = "Janik von Rotz"
	AuthorContact = "http://janikvonrotz.ch"
	CreateDate = "2013-12-17"
	LastEditDate = "2013-12-17"
	Url = ""
	Version = "1.0.0"
	License = @'
This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Switzerland License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/ch/ or 
send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
'@
}
#>

function Enable-InternetExplorerEnhancedSecurityConfiguration{

<#
.SYNOPSIS
    Enable the Internet Explorer ESC feature.

.DESCRIPTION
	Enable the Internet Explorer Enhanced Security Configuration feature.

.EXAMPLE
	PS C:\> Enable-InternetExplorerEnhancedSecurityConfiguration
#>

	[CmdletBinding()]
	param(
        
	)# param end
    
	#--------------------------------------------------#
	# main
	#--------------------------------------------------#
	
	$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    $UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 1
    Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 1
    Stop-Process -Name Explorer
    Write-Host "IE Enhanced Security Configuration (ESC) has been enabled."
}# function end