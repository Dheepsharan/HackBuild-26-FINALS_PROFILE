$env:PATH = "$env:LOCALAPPDATA\Programs\MinGit\cmd;$env:LOCALAPPDATA\Programs\gh;" + [System.Environment]::GetEnvironmentVariable("Path","User") + ";" + [System.Environment]::GetEnvironmentVariable("Path","Machine")

Write-Host "Checking GitHub authentication status..."
gh auth status

if ($LASTEXITCODE -eq 0) {
    Write-Host "Authenticated! Checking if repository 'craftpulse' already exists..."
    $repoCheck = gh repo view Dheepsharan/craftpulse 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Creating new public repository 'craftpulse' on Dheepsharan's profile..."
        gh repo create craftpulse --public --source=. --remote=origin --push
    } else {
        Write-Host "Repository 'craftpulse' already exists. Pushing latest changes..."
        git remote remove origin 2>$null
        git remote add origin https://github.com/Dheepsharan/craftpulse.git
        git push -u origin main --force
    }
    Write-Host "=================================================="
    Write-Host "SUCCESS! Repository published to:"
    Write-Host "https://github.com/Dheepsharan/craftpulse"
    Write-Host "=================================================="
} else {
    Write-Host "Not yet authenticated with gh CLI."
}
