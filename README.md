# SCCM-CleanDesktop
This is a little script to clear the Public user desktop of undesired icons.  You will populate the $exclude parameter with the Public desktop items you wish to keep.

Due to how SCCM structures the executable as a file reference, and the detection method by importing the contents of your script, you'll have to be a little diligent to update both the files and the detection method in the Deployment Type.

## Usage
These will make up the payload and script detection method of your SCCM Application.
### cleanup.ps1
Sets up the excluded file list via the "exclude" parameter entered on the CLI
>$cleanup.ps1 -exclude "Skype.lnk,VMware vSphere Client.lnk"

Default values could also be set in the script itself
>Param(  
>    [string]$exclude = "Skype.lnk,VMware vSphere Client.lnk"  
>    )  

### detect.ps1
Exclusions work the same as for cleanup.ps1.  However, due to how SCCM imports your script into the Deployment Type, you'll have to add the exclusions to the parameters.

>Param(  
>    [string]$exclude = "Skype.lnk,VMware vSphere Client.lnk"  
>    )

# Contributor
Garret Rumohr

# License
GPLv3


