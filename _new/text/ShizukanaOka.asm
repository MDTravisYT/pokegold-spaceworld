INCLUDE "constants.asm"

SECTION "_new/text/ShizukanaOka.asm", ROMX

if DEF(GOLD)

_ShizukanaOkaTrainer6EncounterString:
	text "Look, look!"
	
	para "This has to be"
	line "a new species of"
	cont "#MON!"
	done
	
_ShizukanaOkaTrainer6WonString:
	text "There's a rumor"
	line "that besides"
	cont "new #MON,"
	cont "they found"
	cont "new types too."
	done
	
_ShizukanaOkaTrainer5EncounterString:
	text "What beautiful"
	line "weather we have!"
	
	para "How do you do"
	line "on this fine day?"
	done
	
_ShizukanaOkaTrainer5WonString:
	text "How could this"
	line "happen to me?"
	
	para "I was just taking"
	line "a walk outside..."
	done
	
_ShizukanaOkaTrainer4EncounterString:
	text "I chose this place"
	line "to practice my"
	cont "fire-breathing!"
	done
	
_ShizukanaOkaTrainer4WonString:
	text "It's dark at night,"
	line "so kids should go"
	cont "home before then!"
	
	para "Oh, me? I breathe"
	line "fire, so I'm fine."
	done
	
_ShizukanaOkaTrainer3EncounterString:
	text "When it comes to"
	line "bug type #MON,"
	cont "no one knows more"
	cont "than me!"
	done
	
_ShizukanaOkaTrainer3WonString:
	text "Is that a #DEX"
	line "you're filling?"
	cont "Let me see!"
	
	para "Whoa! You can even"
	line "search by type!"
	done
	
_ShizukanaOkaTrainer2EncounterString:
	text "I'm telling you,"
	line "I've studied more"
	cont "than you, so that"
	cont "means I'm stronger"
	cont "than you."
	
	para "Definitely!"
	done
	
_ShizukanaOkaTrainer2WonString:
	text "This is weird... I"
	line "study #MON"
	cont "every day."
	
	para "How could I lose?"
	done

else

_ShizukanaOkaTrainer6EncounterString:
	text "Tadaa! I made a"
	line "grand discovery!"
	
	para "A never before"
	line "seen #MON!"
	done

_ShizukanaOkaTrainer6WonString:
	text "Hey, I've never"
	line "seen your #MON"
	cont "before either."
	
	para "Wanna trade?"
	done

_ShizukanaOkaTrainer5EncounterString:
	text "Hey, hey! You and"
	line "me, let's battle!"
	done

_ShizukanaOkaTrainer5WonString:
	text "The sun's setting,"
	line "it's getting dark."
	
	para "As I walk, I can't"
	line "even see where I'm"
	cont "going. So scary..."
	done

_ShizukanaOkaTrainer4EncounterString:
	text "You!"
	
	para "Tell me where to"
	line "find a pond before"
	cont "I get mad!"
	done

_ShizukanaOkaTrainer4WonString:
	text "What am I even"
	line "doing out here?"
	done

_ShizukanaOkaTrainer3EncounterString:
	text "You just started"
	line "training #MON?"
	
	para "Then there's no"
	line "way I can lose!"
	done

_ShizukanaOkaTrainer3WonString:
	text "That was just sooo"
	line "upsetting..."
	done

_ShizukanaOkaTrainer2EncounterString:
	text "This place is so"
	line "wide open, it's"
	cont "perfect for"
	cont "working out."
	
	para "What am I working"
	line "out? My #MON,"
	cont "of course!"
	done

_ShizukanaOkaTrainer2WonString:
	text "OK! Time to start"
	line "running!"
	done

endc
	
_ShizukanaOkaText1String:
	text "The #MON around"
	line "here are weak, so"
	cont "trainers like to"
	cont "use this place as"
	cont "training grounds."
	
	para "Everyone loves a"
	line "good fight, so why"
	cont "not try your luck?"
	done
	
_ShizukanaOkaSignpost2String:
	text "QUIET HILLS"
	
	para "This way to"
	line "SILENT HILL"
	done
	
_ShizukanaOkaSignpost1String:
	text "QUIET HILLS"
	
	para "This way to"
	line "OLD CITY"
	done