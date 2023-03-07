#Requires AutoHotkey v2.0

KeyHistory()
SetCapsLockState "AlwaysOff"



toggle := 0

Alt & `::{
global toggle
if (toggle = 0) {
toggle := 1
Send "#^{right}"
} else {
toggle := 0
Send "#^{left}"
}
}

Alt & Esc::{
global toggle
if (toggle = 0) {
toggle := 1
Send "#^{right}"
} else {
toggle := 0
Send "#^{left}"
}
}

CapsLock::Esc

CapsLock & Tab::Send "{Blind}{BS}"
CapsLock & Alt::Send "{Blind}{'}"
CapsLock & Space::Send "{Blind}{Enter}"

CapsLock & `::Send "{Blind}{[}"
CapsLock & 1::Send "{Blind}0"
CapsLock & 2::Send "{Blind}9"
CapsLock & 3::Send "{Blind}8"
CapsLock & 4::Send "{Blind}7"
CapsLock & 5::Send "{Blind}6"
CapsLock & 6::Send "{Blind}{]}"

CapsLock & q::Send "{Blind}p"
CapsLock & w::Send "{Blind}o"
CapsLock & e::Send "{Blind}i"
CapsLock & r::Send "{Blind}u"
CapsLock & t::Send "{Blind}y"
CapsLock & y::Send "{Blind}{-}"

CapsLock & a::Send "{Blind}{;}"
CapsLock & s::Send "{Blind}l"
CapsLock & d::Send "{Blind}k"
CapsLock & f::Send "{Blind}j"
CapsLock & g::Send "{Blind}h"

CapsLock & z::Send "{Blind}{/}"
CapsLock & x::Send "{Blind}{.}"
CapsLock & c::Send "{Blind}{,}"
CapsLock & v::Send "{Blind}m"
CapsLock & b::Send "{Blind}n"
CapsLock & n::Send "{Blind}{\}"







Alt & w::Send "{Blind}{Up}"
Alt & a::Send "{Blind}{Left}"
Alt & s::Send "{Blind}{Down}"
Alt & d::Send "{Blind}{Right}"

!w::Send "{Up}"
!a::Send "{Left}"
!s::Send "{Down}"
!d::Send "{Right}"

CapsLock & h::Send "{Blind}{Left}"
CapsLock & j::Send "{Blind}{Down}"
CapsLock & k::Send "{Blind}{Up}"
CapsLock & l::Send "{Blind}{Right}"
