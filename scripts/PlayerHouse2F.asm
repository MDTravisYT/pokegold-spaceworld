INCLUDE "constants.asm"

SECTION "scripts/PlayerHouse2F.asm", ROMX

PlayerHouse2F_ScriptLoader::
	ld hl, PlayerHouse2FScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

PlayerHouse2FScriptPointers:
	dw PlayerHouse2FScript1
	dw PlayerHouse2FNPCIDs1
	dw PlayerHouse2FScript2
	dw PlayerHouse2FNPCIDs2

PlayerHouse2F_TextPointers::
	dw PlayerHouse2FText1
	dw PlayerHouse2FDollText

PlayerHouse2FNPCIDs1:
	db 0
	db 1
	db $FF

PlayerHouse2FNPCIDs2:
	db 1
	db $FF

PlayerHouse2FSignPointers:
	dw PokemonBooksScript
	dw PlayerHouse2FRadioText
	dw PlayerHouse2FComputerText
	dw PokemonBooksScript
	dw PlayerHouse2FN64Text

PlayerHouse2FScript1:
	call PlayerHouse2PositionCheck
	ret z
	ld hl, PlayerHouse2FNPCIDs1
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret nz
	ret

PlayerHouse2PositionCheck:
	ld hl, wd41a
	bit 0, [hl]
	ret nz
	ld a, [wYCoord]
	cp 1
	ret nz
	ld a, [wXCoord]
	cp 9
	ret nz
	ld hl, wJoypadFlags
	set 6, [hl]
	ld a, LEFT
	ld d, 0
	call SetObjectFacing
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	call PlayerHouse2FMovePlayer
	call xor_a
	ret

PlayerHouse2FMovePlayer:
	ld a, 0
	ld hl, .Movement
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

.Movement:
	step DOWN
	slow_step DOWN
	step_end

PlayerHouse2FScript2:
	ld hl, PlayerHouse2FNPCIDs2
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret

PlayerHouse2FText1:
	ld hl, wd41a
	bit 3, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString1
	call OpenTextbox
	ld hl, wd41a
	set 3, [hl]
	ld c, 3
	call DelayFrames
.jump
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	ret

PlayerHouse2FDollText:
	ld hl, PlayerHouse2FTextString3
	call OpenTextbox
	ret

PlayerHouse2FRadioText:
	ld hl, PlayerHouse2FTextString9
	call OpenTextbox
	ret

PlayerHouse2FComputerText:
	ld hl, wd41a
	bit 0, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString5
	call OpenTextbox
	ret

.jump
	call RefreshScreen
	callfar PokemonCenterPC
	call ScreenCleanup
	ret

PlayerHouse2FCheckEmail:
	call YesNoBox
	jr c, .jump2
	ld hl, wd41a
	set 0, [hl]
	ld hl, PlayerHouse2FTextString6
	call PrintText
	ret

.jump2
	ld hl, PlayerHouse2FTextString7
	call PrintText
	ret

PlayerHouse2FN64Text:
	ld hl, PlayerHouse2FTextString4
	call OpenTextbox
	ret

PlayerHouse2FTextString1:	;	34:4272
	text_far _PlayerHouse2FTextString1
	text_end
rept $BB
	nop
endr

PlayerHouse2FTextString2:	;	34:4332
	text_far _PlayerHouse2FTextString2
	text_end
rept $2E
	nop
endr

PlayerHouse2FTextString3:	;	34:4365
	text_far _PlayerHouse2FTextString3
	text_end
rept $23
	nop
endr

PlayerHouse2FTextString4:	;	34:438d
	text_far _PlayerHouse2FTextString4
	text_end
rept $2B
	nop
endr

PlayerHouse2FTextString5:	;	34:43bd
	text_far _PlayerHouse2FTextString5
	start_asm
	call PlayerHouse2FCheckEmail
	call TextAsmEnd
	ret
rept $31
	nop
endr

PlayerHouse2FTextString6:	;	34:43fa
	text_far _PlayerHouse2FTextString6
	text_end
rept $57
	nop
endr

PlayerHouse2FTextString7:	;	34:4456
	text_far _PlayerHouse2FTextString7
	text_end
rept $6
	nop
endr

PlayerHouse2FTextString8: ; (unused?)	;	34:4461
	text "しんはつばい　トレーナーギア！"	;	NOTRANSLATE
	line "ポケモントレーナーの　ための"
	cont "さいせんたんの　とけい　です"

	para "じかんが　わかるのは　あたりまえ"
	line "カセットを　ついかすれば"
	cont "ばしょも　わかる！　"
	cont "でんわが　かけられる！"

	para "とどめは"
	line "ラジオを　きくことができる！"

	para "もうしこみさきは⋯⋯"
	line "⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯"
	cont "シルフの　ホームページだ"
	done

PlayerHouse2FTextString9:	;	34:44fe
	text_far _PlayerHouse2FTextString9
	text_end
rept $FC
	nop
endr

;	34:45ff
