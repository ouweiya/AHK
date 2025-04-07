SetCapsLockState AlwaysOff
zh := DllCall("LoadKeyboardLayout", "Str", "00000804", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)

CapsLock::
    w := DllCall("GetForegroundWindow")
    pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
    l := DllCall("GetKeyboardLayout", "UInt", pid)
    if (l = en)
    {
        PostMessage 0x50, 0, %zh%,, A
    }
    else
    {
        PostMessage 0x50, 0, %en%,, A
    }
return

; #InstallKeybdHook
; ^F12::
;     KeyHistory
; return

; SC029:: ; 用实际的扫描码替换 xxx
;     Send, $$
; return

; SC029:: ; 用实际的扫描码替换 xxx
;     w := DllCall("GetForegroundWindow")
;     pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
;     l := DllCall("GetKeyboardLayout", "UInt", pid)

;     PostMessage 0x50, 0, %en%,, A ; 切换到英文输入法
;     Send, $$ ; 发送 $$
;     PostMessage 0x50, 0, %zh%,, A ; 切换回原来的输入法
; return

