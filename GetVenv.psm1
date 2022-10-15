<#
.Synopsis
Print list of Python virtual environments.
.DESCRIPTION
Finds all Python virtual environments in parent directory.
.Parameter Path
Path to directory that holds all venv directories.
.EXAMPLE
Get-Venv
.EXAMPLE
Get-Venv -Path C:\Code\.venv
#>
$ErrorActionPreference = "Stop"
Function Get-Venv {
    [CmdletBinding()]
    Param(
        [Parameter(HelpMessage = 'Path to virtual environment parent directory')]
        [String]$Path = $Env:PYTHON_VENV_PATH
    )

    # Print list of available virtual environment names
    try {
        $Items = Get-ChildItem $Path -Name
        foreach ($Item in $Items) {
            if (Test-Path ($Path + "\" + $Item + "\Scripts\Activate.ps1")) {
                Write-Host $Item
            }
        }
    }
    catch {
        Write-Host "Path does not exist."
    }
}