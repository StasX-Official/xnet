# Copyright (c) 2025 StasX (Kozosvyst Stas). All rights reserved.

Write-Host "Installing XNET tool..." -ForegroundColor Green

try {
    $pythonVersion = python --version 2>&1
    if ($pythonVersion -notmatch "Python 3") {
        Write-Host "Python 3 is required! You have $pythonVersion" -ForegroundColor Red
        exit 1
    }
}
catch {
    Write-Host "Python 3 is required but not installed. Please install Python 3 and try again." -ForegroundColor Red
    exit 1
}

python -m pip install --upgrade .

Write-Host "XNET has been installed successfully!" -ForegroundColor Green
Write-Host "You can now use the 'xnet' command from anywhere in your terminal." -ForegroundColor Green
