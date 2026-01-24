INCLUDE "constants.asm"

SECTION "scripts/PlayerHouse1F.asm", ROMX

PlayerHouse1F_ScriptLoader::
	ld hl, PlayerHouse1FScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

PlayerHouse1FScriptPointers:
	dw PlayerHouse1FScript1
	dw PlayerHouse1FNPCIDs1
	dw PlayerHouse1FScript2
	dw PlayerHouse1FNPCIDs2

PlayerHouse1FNPCIDs1:
	db $FF

PlayerHouse1FNPCIDs2:
	db 0
	db $FF

PlayerHouse1FScript1:
	ld hl, PlayerHouse1FNPCIDs1
	ld de, PlayerHouse1FSignPointers
	call CallMapTextSubroutine
	ret

PlayerHouse1FScript2:
	ld hl, PlayerHouse1FNPCIDs2
	ld de, PlayerHouse1FSignPointers
	call CallMapTextSubroutine
	ret

PlayerHouse1FSignPointers:
	dw SilentHillHouseStoveScript
	dw SilentHillHouseSinkScript
	dw PlayerHouse1FFridgeScript
	dw SilentHillHouseTVScript
	dw PokemonBooksScript
PlayerHouse1F_TextPointers::
	dw PlayerHouse1FNPCText1

PlayerHouse1FNPCText1:
	ld hl, PlayerHouse1FTextString1
	call OpenTextbox
	ret

PlayerHouse1FTextString1:	;	34:40d8
	text_far _PlayerHouse1FTextString1
	text_end
rept $55
	nop
endr
	
;	34:4132