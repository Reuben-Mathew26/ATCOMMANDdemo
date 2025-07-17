^!a:: ; Ctrl + Alt + A starts the script
SetTitleMatchMode, 2
WinActivate, AT Emulator  ; 
Sleep, 1000

; Step 1: Get module info
SendRaw, ATI
Send, {Enter}
Sleep, 1000

; Step 2: Check signal quality
SendRaw, AT+CSQ
Send, {Enter}
Sleep, 1000

; Step 3: Check current operator
SendRaw, AT+COPS?
Send, {Enter}
Sleep, 1000

; Step 4: Check network registration status
SendRaw, AT+CGREG?
Send, {Enter}
Sleep, 1000
return
