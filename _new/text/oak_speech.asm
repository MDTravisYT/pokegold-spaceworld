INCLUDE "constants.asm"

SECTION "_new/text/oak_speech.asm", ROMX

_OakSpeechDemo::
	text "Welcome... to the"
	line "world of #MON!"
	
	para "As you may know,"
	line "I am PROF.OAK!"
	
	para "I brought you here"
	line "today because I"
	cont "need your help"
	cont "putting together"
	cont "a new #DEX!"
	
	para "Naturally, I have"
	line "prepared a #MON"
	cont "and a BAG."
	
	para "In the BAG you'll"
	line "find POTIONs and"
	cont "# BALLs, so no"
	cont "need for worry!"
	
	para "Your RIVAL's gone"
	line "ahead already."
	
	para "Hang in there!"
	prompt

_OakSpeech1::
	text "Oh! Sorry for"
	line "the wait."
	
	para "Welcome to the"
	line "world of #MON!"
	
	para "My name is OAK!"
	
	para "People call me"
	line "the #MON PROF!"
	prompt
_OakSpeech2::
	text "As you surely"
	line "already know..."
	
	para "This world is"
	line "inhabited by"
	cont "creatures called"
	cont "#MON!"
	prompt
_OakSpeech3::
	text "For some people,"
	line "#MON are"
	cont "pets. Others use"
	cont "them for fights."
	
	para "Myself..."
	
	para "I study #MON"
	line "as a profession."
	prompt
_OakSpeech4::
	text "First, what is"
	line "your name?"
	prompt
_OakSpeech5::
	text "Then there's this"
	line "boy. He's been"
	cont "your rival since"
	cont "you were a baby."
	
	para "...Erm, what is"
	line "his name again?"
	prompt
_OakSpeech6::
	text "Now, let's mark"
	line "the start of your"
	cont "journey by setting"
	cont "the day!"
	
	para "Be precise!"
	prompt
_OakSpeech7::
	text "<PLAYER>!"

	para "Your very own"
	line "#MON legend is"
	cont "about to unfold!"
	
	para "A world of dreams"
	line "and adventures"
	cont "with #MON"
	cont "awaits! Let's go!"
	done
	
_ChoosePlayerNameEndText::
	text "Right, so your"
	line "name is <PLAYER>!"
	prompt


_ChooseRivalNameEndText::
	text "Oh that's right!"
	line "His name is <RIVAL>!"
	prompt
