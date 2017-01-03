SendCommand(window, command)
{
 clipboard =STR %window% %command%
 return
}

SendKeyPress(window, key)
{
 clipboard =KEY %window% %key%
 return
}

UseSkill(window, skill)
{
	SendCommand(window, "/useskill "skill)
	return
}

Target(window, nick)
{
	SendCommand(window, "/target "nick)
	return
}

Sit(window)
{
	SendCommand(window, "/sit")
	return
}

Stand(window)
{
	SendCommand(window, "/stand")
	return
}

SendInviteParty(window, nick)
{
 SendCommand(window, "/invite "nick)
}
