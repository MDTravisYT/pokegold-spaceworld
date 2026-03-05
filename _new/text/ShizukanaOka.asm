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
	text "ShizukanaOkaTrainer6EncounterString"	;	TODO
;	text "じゃーん！"
;	line "みたことない　ポケモン"
;	cont "だいはっけん"
;	done
;
;	text "ほかの　ポケモンも"
;	line "つかまえて　おくべきだったー"
	done

_ShizukanaOkaTrainer6WonString:
	text "ShizukanaOkaTrainer6WonString"	;	TODO
;	text "きみの　ポケモンも　みたことないな"
;	line "ね　こうかん　しない？"
	done

_ShizukanaOkaTrainer5EncounterString:
	text "ShizukanaOkaTrainer5EncounterString"	;	TODO
;	text "ねーねー　あたしと"
;	line "ポケモンしょうぶ　しよーよー"
;	done
;
;	text "やーん"
	done

_ShizukanaOkaTrainer5WonString:
	text "ShizukanaOkaTrainer5WonString"	;	TODO
;	text "よるになると　くらくなるじゃない？"
;	line "あるいてても　まわりが"
;	cont "よくわからなくて　こわいわ"
	done

_ShizukanaOkaTrainer4EncounterString:
	text "ShizukanaOkaTrainer4EncounterString"	;	TODO
;	text "きみ！"
;
;	para "おこらないから"
;	line "いけが　あるところを　おしえなさい！"
;	done
;
;	text "みずが　ちかくに　ないと⋯⋯"
	done

_ShizukanaOkaTrainer4WonString:
	text "ShizukanaOkaTrainer4WonString"	;	TODO
;	text "どうして　おじさんは"
;	line "こんなところに　いるんだ？"
	done

_ShizukanaOkaTrainer3EncounterString:
	text "ShizukanaOkaTrainer3EncounterString"	;	TODO
;	text "ポケモンは　はじめたばかり？"
;	line "それやったら　まけへんで"
;	done
;
;	text "うわ　なんでやねん"
	done

_ShizukanaOkaTrainer3WonString:
	text "ShizukanaOkaTrainer3WonString"	;	TODO
;	text "なんか　すっげー　くやしいわ"
	done

_ShizukanaOkaTrainer2EncounterString:
	text "ShizukanaOkaTrainer2EncounterString"	;	TODO
;	text "ここは　ひろくて"
;	line "トレーニングに　さいてきだ"
;
;	para "なんのって　もちろん"
;	line "ポケモンの　トレーニングだよ！"
;	done
;
;	text "れ　れんしゅう　ぶそくか⋯⋯"
	done

_ShizukanaOkaTrainer2WonString:
	text "ShizukanaOkaTrainer2WonString"	;	TODO
;	text "よーし　はしる　ぞー"
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
	text "SILENT HILLS"
	
	para "This way to"
	line "SILENT HILL"
	done
	
_ShizukanaOkaSignpost1String:
	text "SILENT HILLS"
	
	para "This way to"
	line "OLD CITY"
	done