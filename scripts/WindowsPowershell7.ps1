# PowerShell Script to manage user PATH and other system tasks

# Define the environment path variable and the path to the 'mepath.txt' file
$envPath = $env:Path
$mePath = "$env:USERPROFILE\mepath.txt"

# Function to load the paths from the file and append them to the current environment PATH
# This function reads paths from 'mepath.txt' and merges them with the current system PATH.
function Env-Load {
  # Check if 'mepath.txt' exists
  if (Test-Path $mePath) {
    # Read the paths from the file and join them with ';' separator
    $savedPaths = (Get-Content $mePath) -join ';'  # Corrected this line
    # Append the saved paths to the current environment PATH
    return "$savedPaths;$envPath"
  }
  return $envPath
}

# Function to add a path to the saved file and update the environment PATH
# This function checks if the path is already in the saved file, and if not, adds it.
function Env-Add {
  param (
    [string]$PathToAdd # The path to be added to the user PATH
  )

  # Check if 'mepath.txt' exists
  if (Test-Path $mePath) {
    # If the file exists, read the current paths from it
    $currentPaths = Get-Content $mePath
  } else {
    # If the file doesn't exist, initialize an empty array for paths
    $currentPaths = @()
  }

  # Check if the path is already present in the list
  if ($currentPaths -contains $PathToAdd) {
    Write-Host "The path '$PathToAdd' is already in the user PATH." -ForegroundColor Yellow
  } else {
    # Add the new path to the list
    $currentPaths += $PathToAdd
    # Save the updated list back to 'mepath.txt'
    $currentPaths | Set-Content $mePath
    Write-Host "The path '$PathToAdd' has been added to the user PATH." -ForegroundColor Green
  }

  # Update the environment PATH with the new paths
  $env:Path = Env-Load
}

# Function to stop all processes that have a main window
function Stop-All {
  # Check if the user is running PowerShell with Administrator privileges
  if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "This function requires Administrator privileges. Please re-run PowerShell as Administrator." -ForegroundColor Yellow
    return
  }

  # Stop all processes that have a main window
  Get-Process | Where-Object { $_.MainWindowTitle -ne "" } | ForEach-Object { $_.Kill() }
  Write-Host "All processes with a main window have been terminated." -ForegroundColor Green
}

# Function to get the current Git branch
function Get-GitBranch {
  # Retrieve the current Git branch name
  $branch = & git rev-parse --abbrev-ref HEAD 2>$null
  if ($branch) {
    return "[$branch]"
  }
  return ""
}


# Function to customize the prompt
function Prompt {
  # Ensure that $env:Path is updated with the latest value
  $env:Path = Env-Load

  # Call the Get-GitBranch function to get the active branch
  $gitBranch = Get-GitBranch

  # Display the current directory followed by the Git branch name (if any)
  "$PWD$gitBranch> "
}
