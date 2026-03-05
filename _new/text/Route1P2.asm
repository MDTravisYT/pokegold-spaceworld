INCLUDE "constants.asm"

SECTION "_new/text/Route1P2.asm", ROMX

if DEF(GOLD)
_Route1P2TextString1:
	text "What a lovely"
	line "trainer you are!"
	
	para "Won't you partake"
	line "in a battle?"
	done
	
_Route1P2TextString3:
	text "You look cute, but"
	line "you truly don't"
	cont "hold back! You'll"
	cont "strain yourself..."
	done
	
_Route1P2TextString4:
	text "GARY: Oh, if it"
	line "isn't ASH!"
else
_Route1P2TextString1:
	text "Route1P2TextString1"	;	TODO
;	text "うちの　ポケモン"
;	line "そら　もう　かわいいんどすえ"
	done
	
_Route1P2TextString3:
	text "Route1P2TextString3"	;	TODO
;	text "プりンちゃんが　かわいそ　どす"
	done
	
_Route1P2TextString4:
	text "ASH: Oh, if it"
	line "isn't GARY!"
endc
	para "Guess you actually"
	line "made it all the"
	cont "way here."
	
	para "Even though you're"
	line "a wimp! Don't push"
	cont "yourself, huh!"
	
	para "You've got your"
	line "work cut out for"
	cont "you, don'tcha?"
	
	para "Like catching more"
	line "#MON, or"
	cont "raising lotsa"
	cont "different types"
	cont "of #MON!"
	
	para "You should turn"
	line "back here! See ya!"
	done
	
_Route1P2TextString5:
	text "ROUTE 1"
	line "SILENT HILL -"
	cont "OLD CITY"
	done