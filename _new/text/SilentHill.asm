INCLUDE "constants.asm"

SECTION "_new/text/SilentHill.asm", ROMX

_SilentHillTextString1:
	text "Huh?"
	line "It's locked..."
	done
	
_SilentHillTextString2:
	text "HOUSE FOR RENT"
	done

_SilentHillTextString3:
	text "Ever peaceful"
	line "SILENT HILL"
	done
	
_SilentHillTextString4:
	text "<PLAYER>'s house"
	done
	
_SilentHillTextString5:
	text "<RIVAL>'s house"
	done
	
_SilentHillTextRival1:
	text "<RIVAL>: Hey,"
	line "there's something"
	cont "I've gotta brag"
	cont "to you about!"
	
	para "I got an e-mail"
	line "from PROF.OAK!"
	
	para "Yeah, the world"
	line "famous one!"
	
	para "Wha-? Y-You too?!"
	line "Man, that's no fun!"
	
	para "...Hmph! Alright"
	line "huh, then..."
	
	para "What do you call"
	line "your mommie?!"
	done
	
_SilentHillTextRival2:
	text "<RIVAL>: Hahaha,"
	line "that's so lame!"
	
	para "You seriously call"
	line "her that?"
	
	para "Ahhh, that feels"
	line "a bit better."
	
	para "Alright, I'm off"
	line "to OAK's!"
	
	para "See ya there!"
	done
	
_SilentHillTextNorthExit:
	text "Wait! Wait up!"
	line "Stop right there!"
	done
	
_SilentHillTextPokemonInGrassString:
	text "You don't know"
	line "anything, do you?"
	
	para "Wild #MON live"
	line "in tall grass!"
	
	para "You need your own"
	line "#MON for your"
	cont "protection."
	
	para "Ah! Are you"
	line "perhaps...?"
	cont "...Come with me"
	cont "for a sec!"
	done
	
_SilentHillTextBackpackString:
	text "That's such a cute"
	line "PACK! Where'd you"
	cont "get it?"
	done
	
_SilentHillTextPokemonHateString:
	text "Is there anyone in"
	line "the world who"
	cont "doesn't like"
	cont "#MON?"
	done