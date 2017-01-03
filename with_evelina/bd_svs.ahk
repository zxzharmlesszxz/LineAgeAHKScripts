#MaxThreadsPerHotkey 1
#MaxThreadsBuffer On

#Include %A_LineFile%\..\la_lib.ahk

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
	Stand(members["svs"].window)
	Sleep 750
	Stand(members["bd"].window)
	Sleep 750
	UseSkill(members["svs"].window,"Song of Renewal")
	Sleep 750
	UseSkill(members["bd"].window,"Dance of Fury")
	Sleep 1150
	UseSkill(members["svs"].window,"Song of Champion")
	Sleep 750
	UseSkill(members["bd"].window,"Dance of Fire")
	Sleep 1150
	UseSkill(members["svs"].window,"Song of Hunter")
	Sleep 750
	UseSkill(members["bd"].window,"Dance of the Warrior")
	Sleep 1150
	UseSkill(members["svs"].window,"Song of Earth")
	Sleep 750
	UseSkill(members["bd"].window,"Dance of the Vampire")
	Sleep 750
	Sit(members["svs"].window)
	Sleep 750
	Sit(members["bd"].window)
	Sleep 750
	return
}

shadow()
{
	global members
	Stand(members["bd"].window)
	Sleep 750
	UseSkill(members["bd"].window,"Dance of Shadows")
	Sleep 3000
	Sit(members["bd"].window)
	Sleep 750
	return
}

init()

#InstallKeybdHook
#UseHook ON

RAlt & 1::
 clipboard =SET 1
return

RAlt & 2::
 clipboard =SET 2
return

Numpad2::
 ds()
return

Numpad3::
 shadow()
return
