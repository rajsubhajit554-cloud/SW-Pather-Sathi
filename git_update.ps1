Write-Host "===================================" -ForegroundColor Cyan
Write-Host "  SW Pather Sathi - Git Update Script" -ForegroundColor Cyan
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

git status

$commitMsg = Read-Host "Enter commit message (press Enter for default 'Update website files')"
if ([string]::IsNullOrWhiteSpace($commitMsg)) {
    $commitMsg = "Update website files"
}

Write-Host "`nAdding files..." -ForegroundColor Yellow
git add .

Write-Host "`nCommitting changes..." -ForegroundColor Yellow
git commit -m "$commitMsg"

Write-Host "`nPushing to GitHub (origin main)..." -ForegroundColor Yellow
git push -u origin main

Write-Host "`n===================================" -ForegroundColor Green
Write-Host "  Git Update Finished!" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Green
