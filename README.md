You can switch input methods by three keys, `Ctrl+Space`, `Shift`, `CapsLock`.

I prefer to use `CapsLock`, because few hotkeys are occupied, I can hold down `Shift` to enter uppercase English, so the first line of code in the script is to turn off the default function of `CapsLock`.

Learn more about AutoHotkey
https://www.autohotkey.com/docs/Tutorial.htm

```ahk
SetCapsLockState AlwaysOff
zh := DllCall("LoadKeyboardLayout", "Str", "00000804", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)

; ^Space::
; Shift::
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

```