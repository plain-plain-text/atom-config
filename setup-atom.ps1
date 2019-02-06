<#
This PowerShell script checks for the presence of Atom packages and installs them. 
It then lightly touches the configurations to ensure autosave is enabled.

If you cannot get this script to run on your local computer, as an initial, security-risky
solution, run this command in Powershell:

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

After running this script, you can set the policy back to the Windows default:

Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser

Alternatively, you can run powershell itself with different execution policy.
To do that, open a command prompt and run:

powershell -ExecutionPolicy Unrestricted

For the duration of that shell, the policy will be unrestricted.
#>

# configure apm and Atom config variables.
$apm = $env:USERPROFILE + "\AppData\Local\atom\bin\apm"
$atom_config = $env:USERPROFILE + "\.atom\config.cson"

# Install packages.
if (Get-Command $apm -errorAction SilentlyContinue){
 $packages = @("busy-signal", "file-icons", 
    "platformio-ide-terminal", "wordcount", 
    "linter-markdown", "intentions",
    "linter-ui-default", "linter",
    "linter-js-yaml", "linter-eslint",
    "linter-ruby", "linter-pylint")
  foreach ($package in $packages) {
    $apm_args = ($apm + " install " + $package)
    iex $apm_args
    # $apm_args
  }
} else {
 "The Atom Package Manager (apm) could not be found."
}

# Enable autosave
if(cat $atom_config | Select-String -Pattern "^\s+autosave:" -notMatch){
  "Enabling autosave."
  Add-Content $atom_config "  autosave:"
  Add-Content $atom_config "    enabled: true"
}    
