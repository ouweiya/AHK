chromePath := "C:\Program Files\Google\Chrome Dev\Application\chrome.exe"
url := "https://www.google.com"

Run, %chromePath% --new-window --app=%url% --incognito
WinWaitActive, ahk_exe chrome.exe
WinRestore, A
WinMove, A,, 300, 100, 1310, 920
ExitApp
