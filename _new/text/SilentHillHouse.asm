INCLUDE "constants.asm"

SECTION "_new/text/SilentHillHouse.asm", ROMX

_SilentHillHouseTextString1:
	text "Oh? There seems to"
	line "be a new e-mail"
	cont "addressed to"
	cont "<RIVAL>! Read it?"
	text_end
	
;_SilentHillHouseTextString2:
	;	identical to _PlayerHouse2FTextString6

_SilentHillHouseTextString3:
	text "Right. I shouldn't"
	line "read others' mail."
	done

_SilentHillHouseTextString4:
	text "The other day I"
	line "saw a strangely-"
	cont "colored PIDGEY!"
	done

_SilentHillHouseTextString5:
	text	"KEN: Wh-wha-... If"
	line	"it isn't <PLAYER>!"

	para	"I'm huh... here to "
	line	"help out with "
	cont	"homework! Yeah!"

	para	"Huh? A map? Right,"
	line	"I promised to help"
	cont	"with that, didn't"
	cont	"I? Hand me your"
	cont	"<TRAINER> GEAR for"
	cont	"a second."

	para	"By putting the map"
	line	"cartridge into"
	cont	"this slot here..."
	cont	"There we go!"
	
	para	"Now you can use"
	line	"the map!"
	done

_SilentHillHouseTextString6:
	text	"KEN: If you're"
	line	"going to OLD CITY,"
	cont	"you should look"
	cont	"for this guy BILL!"
	
	para	"He's a friend of"
	line	"mine who knows a"
	cont	"lot about #MON."
	
	para	"I'm sure he'll"
	line	"help you out!"
	done

_SilentHillHouseTextString7:
	text	"KEN: You were"
	line	"invited by PROF."
	cont	"OAK to help make a"
	cont	"new POKéDEX? Whoa!"
	cont	"Good luck!"
	done
