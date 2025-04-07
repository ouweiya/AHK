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
