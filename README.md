# GetVenv

PowerShell module that prints all available Python virtual environment names from parent directory.

## Installation

1. Install as a virtual module for current user:

```ps1
git clone git@github.com:lukasvasadi/get-venv.git ($Env:PSModulePath.Split(';')[0] + "\GetVenv")
```

2. Create an environment variable `PYTHON_VENV_PATH` that stores the path to a `venv` parent directory:

```ps1
[System.Environment]::SetEnvironmentVariable('PYTHON_VENV_PATH','C:\path\to\venv',[System.EnvironmentVariableTarget]::User)
```

3. Restart PowerShell to promote changes.

## Usage

Print list of virtual environment names from default parent directory:

```ps1
Get-Venv
```

Supply an alternative path to the `venv` parent directory:

```ps1
Set-Venv -Name myenvironment -Path C:\path\to\venv
```
