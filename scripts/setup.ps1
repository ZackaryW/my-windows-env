. "scripts/lib.ps1"

echo "INSTALL UNIGETUI"
Start-Sleep -Seconds 1
winget install unigetui -s msstore @($winget_args.Split())

echo "INSTALL github desktop"
Start-Sleep -Seconds 1
winget install  GitHub.GitHubDesktop @($winget_args.Split())

echo "INSTALL powershell"
Start-Sleep -Seconds 1
winget install  Microsoft.PowerShell @($winget_args.Split())

echo "SCOOP INSTALL potplayer"
Start-Sleep -Seconds 1
scoop install potplayer

echo "SCOOP install yt-dlp"
Start-Sleep -Seconds 1
scoop install yt-dlp

echo "SETUP COMPLETE!"
