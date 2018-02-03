#Next/Onecloud icon fixer with Dropbox.
#Will not work if Next/Onecloud is not installed.
$confirmation = Read-Host 'This script will not work without Nextcloud/Onecloud installed. Are you Sure You Want To Proceed? (y/n)'
    if ($confirmation -eq 'y') {
        Rename-Item -Force 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\  OCError' -NewName "     OCError"
        Rename-Item -Force 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\  OCOK' -NewName "     OCOK"
        Rename-Item -Force 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\  OCOKShared' -NewName "     OCOKShared"
        Rename-Item -Force 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\  OCSync' -NewName "     OCSync"
        Rename-Item -Force 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers\  OCWarning' -NewName "     OCWarning"

        Write-Host ''
        Write-Host ''
        Write-Host 'OK.' -foreground "yellow"
        Write-Host -NoNewLine 'Press any key to continue...' -ForegroundColor White
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
    }