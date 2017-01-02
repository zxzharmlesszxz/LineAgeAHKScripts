#InstallKeybdHook
#UseHook ON
#MaxThreadsPerHotkey 1
#MaxThreadsBuffer On

#Include %A_ScriptDir%\la_lib.ahk

RAlt & 1::clipboard =SET 1
RAlt & 2::clipboard =SET 2

;SET 1 bd
;SET 2 svs

; Numpad2 - ds
; Numpad3 - shadow

init()
{
	global members := {}, member :={}
	bd := new member
	bd.prof := "bd"
	bd.nick := "kekssi"
	bd.window := 1
	members[bd.prof] := bd
	svs := new member
	svs.prof := "svs"
	svs.nick := "keksi"
	svs.window := 2
	members[svs.prof] := svs
	return
}

ds()
{
	global members
	stand(members["svs"].window)
	Sleep 750
	stand(members["bd"].window)
	Sleep 750
	use_skill(members["svs"].window,"Song of Renewal")
	Sleep 750
	use_skill(members["bd"].window,"Dance of Fury")
	Sleep 1150
	use_skill(members["svs"].window,"Song of Champion")
	Sleep 750
	use_skill(members["bd"].window,"Dance of Fire")
	Sleep 1150
	use_skill(members["svs"].window,"Song of Hunter")
	Sleep 750
	use_skill(members["bd"].window,"Dance of the Warrior")
	Sleep 1150
	use_skill(members["svs"].window,"Song of Earth")
	Sleep 750
	use_skill(members["bd"].window,"Dance of the Vampire")
	Sleep 750
	sit(members["svs"].window)
	Sleep 750
	sit(members["bd"].window)
	Sleep 750
	return
}

shadow()
{
	global members
	stand(members["bd"].window)
	Sleep 750
	use_skill(members["bd"].window,"Dance of Shadows")
	Sleep 3000
	sit(members["bd"].window)
	Sleep 750
	return
}

init()

Numpad2::ds()

Numpad3::shadow()