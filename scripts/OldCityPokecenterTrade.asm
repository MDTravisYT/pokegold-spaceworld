INCLUDE "constants.asm"

SECTION "scripts/OldCityPokecenterTrade.asm", ROMX

OldCityPokecenterTrade_ScriptLoader:
	ld hl, OldCityPokecenterTradeScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

OldCityPokecenterTradeScriptPointers:
	dw OldCityPokecenterTradeScript1
	dw OldCityPokecenterTradeNPCIds

OldCityPokecenterTradeScript1:
	ld hl, OldCityPokecenterTradeNPCIds
	ld de, OldCityPokecenterTradeSignPointers
	call CallMapTextSubroutine
	ret

OldCityPokecenterTradeNPCIds:
	db $00, $ff

OldCityPokecenterTradeSignPointers:
	dw MapDefaultText

OldCityPokecenterTrade_TextPointers:
	dw OldCityPokecenterTradeText1

OldCityPokecenterTradeText1:
	ld hl, wJoypadFlags
	set 5, [hl]
	ld hl, OldCityPokecenterTradeTextString1
	call OpenTextbox
	ld hl, wJoypadFlags
	res 5, [hl]
	callfar Function28000
	ret

OldCityPokecenterTradeTextString1:	;	25:489d
	text_far _OldCityPokecenterBattleTextString1
	text_end
rept $A
	nop
endr

;	25:48ac