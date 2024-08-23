; AutoHotKey Script Written by Buffal0x
; For more information check out AHK's website: https://www.autohotkey.com/
; They really have a lot of tutorials and making AHK easy to understand. 



; This script is heavily adjusted after Visual Code and Chrome when doing web development.
; You can change the variables after your liking, for i.e you want to make the keybinds ONLY work inside a specific window.
; In my case it is mostly Code.exe (Visual Code) and Chrome. 
; To check what key corresponds to which you can use, https://www.autohotkey.com/docs/v1/KeyList.htm and you have everything there. 
; To write combo keybinds you need to know these special characters: 
; # = Winkey (Windows key)
; ! = ALT
; ^ = CTRL
; + = SHIFT
; & = An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.


#NoEnv  ; Recommended for performance and better error checking
#Persistent  ; Keep this file running as long as this program is running
#InstallKeybdHook

; The forward mouse button refreshes chrome.exe as a full refresh (CTRL+F5)
; Because of our #IfWinActive our keybinds will only work inside chrome.exe
#IfWinActive ahk_exe chrome.exe
XButton2::
Send {LCtrl down}{F5}{LCtrl up} ; These two are exactly the same only that this one uses Forward key to refresh
#IfWinActive
Return

#IfWinActive ahk_exe chrome.exe ; This function refreshes the page with CTRL + X. If you don't have your hand on your mouse for example.
^X::
Send {LCtrl down}{F5}{LCtrl up}
#IfWinActive
Return

; CTRL + Space acts if I press Enter. Depending on where my hands and fingers are while coding, having a third Enter button isn't so dumb after all.
#IfWinActive ahk_exe Code.exe
^Space::
Send {Enter}
#IfWinActive
Return

; If Shift + Space gets pressed then it acts as the right arrow key, to get out brackets i.e .class {} moves the bar to the right.
#IfWinActive ahk_exe Code.exe
+Space::
Send, {Right}
Return
#IfWinActive

; If CTRL + Left Alt gets pressed it opens up curly brackets easily instead of using two hands.
#IfWinActive ahk_exe Code.exe
^LAlt::
SendRaw, {
#IfWinActive
Return

#IfWinActive ahk_exe Chrome.exe
^MButton::
Send, ^+I
Return
#IfWinActive




; Toggle On & Off Option with Numpad division

NumpadDiv::
Suspend, Toggle
Return

; Reload the script with Numpad multiplication

NumpadMult::
Reload
Return

