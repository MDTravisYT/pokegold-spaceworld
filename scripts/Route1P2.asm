INCLUDE "constants.asm"

SECTION "scripts/Route1P2.asm", ROMX

Route1P2_ScriptLoader::
	ld hl, Route1P2ScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

Route1P2ScriptPointers:
	dw Route1P2Script
	dw Route1P2NPCIDs

Route1P2NPCIDs:
	db $00
	db $01
	db $FF

Route1P2SignPointers:
	dw Route1P2TextSign1

Route1P2_TextPointers::
	dw Route1P2Text1
	dw Route1P2Text2

Route1P2Script::
	ld a, [wYCoord]
	cp $06
	jr nz, .skipCheck
	ld a, [wXCoord]
	cp $09
	jr nz, .skipCheck
	ld a, 0 ; player
	ld d, LEFT
	call SetObjectFacing
	ld a, 2
	ld d, RIGHT
	call SetObjectFacing
	jr .endDemo
.skipCheck
	ld hl, Route1P2NPCIDs ;data
	ld de, Route1P2SignPointers ;start of textld pointers?
	call CallMapTextSubroutine
	ret

.endDemo
Route1P2Text1:
	ld hl, Route1P2TextString4
	call OpenTextbox
	call GBFadeOutToBlack
	jp Init

Route1P2Text2:
	ld hl, $D3A2 ; trainer flags?
	bit 1, [hl]
	jr nz, .Text2Jump ; already fought
	ld hl, Route1P2TextString1
	call OpenTextbox
	ld hl, $D3A2
	set 1, [hl]
	ld a, TRAINER_KIMONO_GIRL
	ld [wOtherTrainerClass], a
	ld a, KIMONO_GIRL_KOUME
	ld [wOtherTrainerID], a
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_START_TRAINER_BATTLE
	ld [wMapStatus], a
	ret

.Text2Jump
Route1P2Text3:
	ld hl, Route1P2TextString3
	call OpenTextbox
	ret

Route1P2TextSign1:
	ld hl, Route1P2TextString5
	call OpenTextbox
	ret

Route1P2TextString1:	;	36:7ce8
	text_far _Route1P2TextString1
	text_end
rept $1F
	nop
endr

Route1P2TextString2: ; (unused?)	;	36:7d0c
	text "いやあ　かんにんやわあ"	;	NOTRANSLATE
	done

Route1P2TextString3:	;	36:7d19
	text_far _Route1P2TextString3
	text_end
rept $1D
	nop
endr

Route1P2TextString4:	;	36:7d3b
	text_far _Route1P2TextString4
	text_end
rept $7D
	nop
endr

Route1P2TextString5:	;	36:7dbd
	text_far _Route1P2TextString5
	text_end
	
;	bank ends here, no further padding needed