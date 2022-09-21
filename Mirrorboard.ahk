 	#InstallKeybdHook
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
KeyHistory
SetcapsLockState, AlwaysOff

`::
Ctrl & 4::ScrollLock
XButton2::ScrollLock
Alt & `::
toggle := !toggle 
goto, % toggle ? "1" : "2" 
return

1:
Send #^{right}
return

2:
Send #^{left}
return

Alt & Escape::
toggle := !toggle 
goto, % toggle ? "a" : "b" 
return

a:
Send #^{right}
return

b:
Send #^{left}
return

Home::BlockInput, On
End::BlockInput, Off

XButton2::return

CapsLock & Tab::Send {Blind}{BS}
CapsLock & Alt::Send {Blind}{'}
CapsLock & Space::Send {Blind}{Enter}

CapsLock & `::Send {Blind}{[}
CapsLock & 1::Send {Blind}0
CapsLock & 2::Send {Blind}9
CapsLock & 3::Send {Blind}8
CapsLock & 4::Send {Blind}7
CapsLock & 5::Send {Blind}6
CapsLock & 6::Send {Blind}{]}

CapsLock & q::Send {Blind}p
CapsLock & w::Send {Blind}o
CapsLock & e::Send {Blind}i
CapsLock & r::Send {Blind}u
CapsLock & t::Send {Blind}y
CapsLock & y::Send {Blind}{-}

CapsLock & a::Send {Blind}{;}
CapsLock & s::Send {Blind}l
CapsLock & d::Send {Blind}k
CapsLock & f::Send {Blind}j
CapsLock & g::Send {Blind}h
CapsLock & h::Send {Blind}{=}

CapsLock & z::Send {Blind}{/}
CapsLock & x::Send {Blind}{.}
CapsLock & c::Send {Blind}{,}
CapsLock & v::Send {Blind}m
CapsLock & b::Send {Blind}n
CapsLock & n::Send {Blind}{\}	







LAlt & w::Send {Blind}{Up}
LAlt & a::Send {Blind}{Left}
LAlt & s::Send {Blind}{Down}
LAlt & d::Send {Blind}{Right}


KeyboardState = 0

PrintScreen::
if (KeyboardState = 0) {
Suspend
KeyboardState = 1
}
else if (KeyboardState = 1) {
KeyboardState = 2
} else if(KeyboardState = 2) {
KeyboardState = 0

}







