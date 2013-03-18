Powershell-Profile
==================

One of the most advanced Powershell profile configurations for Administrators.

##How to install:##

	PS C:\Powershell-Profile> Set-ExecutionPolicy bypass

	Ausführungsrichtlinie ändern
	Die Ausführungsrichtlinie trägt zum Schutz vor nicht vertrauenswürdigen Skripts bei. Wenn Sie die Ausführungsrichtlinie
	 ändern, sind Sie möglicherweise den im Hilfethema "about_Execution_Policies" beschriebenen Sicherheitsrisiken
	ausgesetzt. Möchten Sie die Ausführungsrichtlinie ändern?
	[J] Ja  [N] Nein  [H] Anhalten  [?] Hilfe (Standard ist "J"): J

Edit the config.xml file

	PS C:\Powershell-Profile> .\ProfileInstallation.ps1

##Configure Git:##

	Import-Module posh-git
	
	PS C:\Users\[username]> mdkir .ssh
	
Add your ssh key to the created location and start using git
	

