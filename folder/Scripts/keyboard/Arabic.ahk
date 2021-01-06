#NoTrayIcon
#SingleInstance ignore
Esc & Tab::Reload

::exit wob exit NOW::
	send Command accepted
	ExitApp
	return

F1 & 1::
toggle1 := !toggle1
	return

#if toggle1
	~::send ذ
	1::send ١
	2::send ٢
	3::send ٣
	4::send ٤
	5::send ٥
	6::send ٦
	7::send ٧
	8::send ٨
	9::send ٩
	0::send ٠
	-::send -
	=::send =
	q::ض
	w::ص
	e::ث
	r::ق
	t::ف
	y::غ
	u::ع
	i::ه
	o::خ
	p::ح
	[::ج
	]::د
	\::\
	a::ش
	s::س
	d::ي
	f::ب
	g::ل
	h::ا
	j::ت
	k::ن
	l::م
	;::ك
	'::ط
	z::ئ
	x::ء
	c::ؤ
	v::ر
	b::Send لا
	n::ى
	m::ة
	,::و
	.::ز
	/::ظ
	return
#if
