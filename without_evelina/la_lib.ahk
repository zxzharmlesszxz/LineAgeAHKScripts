SendCommand(command)
{
 %command%
 return
}

SendKeyPress(key)
{
 %key%
 return
}

UseSkill(skill)
{
	SendCommand("/useskill %skill%")
	return
}

Target(nick)
{
	SendCommand("/target %nick%")
	return
}

Sit()
{
	SendCommand("/sit")
	return
}

Stand()
{
	SendCommand("/stand")
	return
}

SendInviteParty(nick)
{
 SendCommand("/invite %nick%")
}
