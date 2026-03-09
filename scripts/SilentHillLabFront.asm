INCLUDE "constants.asm"

SECTION "scripts/SilentHillLabFront.asm", ROMX

SilentHillLabFront_ScriptLoader::
	ld hl, SilentHillLabFrontScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillLabFrontScriptPointers:
	dw SilentHillLabFrontScript1
	dw SilentHillLabFrontNPCIDs1

	dw SilentHillLabFrontScript2
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript3
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript4
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontConversation1
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript6
	dw SilentHillLabFrontNPCIDs3

	dw SilentHillLabFrontScript7
	dw SilentHillLabFrontNPCIDs4

	dw SilentHillLabFrontScript8
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript9
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript10
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript11
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript12
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript13
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript14
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript15
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript16
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript17
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript18
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript19
	dw SilentHillLabFrontNPCIDs9

SilentHillLabFrontNPCIDs1:
	db $02
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs2:
	db $00
	db $02
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs3:
	db $02
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs4:
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs5:
	db $01
	db $03
	db $05
	db $06
	db $07
	db $08
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs6:
	db $01
	db $03
	db $05
	db $06
	db $07
	db $08
	db $FF
SilentHillLabFrontNPCIDs7:
	db $00
	db $05
	db $06
	db $07
	db $08
	db $FF
SilentHillLabFrontNPCIDs8: ; (unused?)
	db $00
	db $03
	db $05
	db $06
	db $07
	db $08
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs9:
	db $00
	db $07
	db $08
	db $FF

SilentHillLabFront_TextPointers::
	dw SilentHillLabFrontText4
	dw SilentHillLabFrontText7
	dw SilentHillLabFrontText10
	dw SilentHillLabFrontText11
	dw SilentHillLabFrontTextString20
	dw SilentHillLabFrontText12
	dw SilentHillLabFrontText13
	dw SilentHillLabFrontText14
	dw SilentHillLabFrontText15
	dw SilentHillLabFrontText16
	dw SilentHillLabFrontText16

SilentHillLabFrontScript1:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs1
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontMoveDown:
	ld a, [wXCoord]
	cp 4
	ret nz
	ld a, [wYCoord]
	cp 1
	ret nz
	ldh a, [hJoyState]
	bit 6, a
	jp z, xor_a_dec_a
	call SilentHillLabFrontText3
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call FreezeAllOtherObjects
	ld a, 0
	ld hl, SilentHillLabFrontMovement1
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	call xor_a
	ret

SilentHillLabFrontMovement1:
	slow_step LEFT
	step_end

SilentHillLabFrontScript2:
	ld a, 2
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontScript3:
	ld a, 6
	call FreezeAllOtherObjects
	ld a, 0
	call UnfreezeObject
	ld b, 6
	ld c, 0
	call StartFollow
	ld hl, SilentHillLabFrontMovement2
	ld a, 6
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 3
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	slow_step UP
	slow_step RIGHT
	turn_head UP
	step_end

SilentHillLabFrontScript4:
	call FreezeAllObjects
	ld a, 4
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontConversation1:
	ld a, 4
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString20
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString4
	call OpenTextbox
	ld a, 4
	ld d, UP
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString28
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString5
	call OpenTextbox
	ld a, 4
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString29
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString7
	call OpenTextbox
	call SilentHillLabFrontScript5
	ret

SilentHillLabFrontScript5:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 2
	call FreezeAllOtherObjects
	ld a, 2
	ld hl, SilentHillLabFrontMovement3
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 5
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement3:
	step UP
	slow_step UP
	remove_object

SilentHillLabFrontScript6:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 4
	call FreezeAllOtherObjects
	ld a, 4
	ld hl, SilentHillLabFrontMovement4
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 6
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement4:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	remove_object

SilentHillLabFrontScript7:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call FreezeAllOtherObjects
	ld a, 0
	ld hl, SilentHillLabFrontMovement5
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 7
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement5:
	step UP
	step UP
	step UP
	slow_step UP
	step_end

SilentHillLabFrontScript8:
	ld a, 3
	call SetObjectLowPriority
	ld a, 5
	call SetObjectLowPriority
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call FreezeAllOtherObjects
	ld a, 0
	ld hl, SilentHillLabFrontMovement6
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 8
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement6:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	slow_step LEFT
	step_end

SilentHillLabFrontScript9:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call FreezeAllOtherObjects
	ld a, 5
	call ResetObjectLowPriority
	ld a, 5
	ld hl, SilentHillLabFrontMovement7
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 9
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement7:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	slow_step LEFT
	step_end

SilentHillLabFrontScript10:
	ld a, 5
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString21
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	ld d, RIGHT
	call SetObjectFacing
	ld a, 5
	ld d, RIGHT
	call SetObjectFacing
	ld a, 3
	call FreezeAllOtherObjects
	ld a, 3
	call ResetObjectLowPriority
	ld a, 3
	ld hl, SilentHillLabFrontMovement8
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, $0A
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement8:
	step DOWN
	slow_step DOWN
	step_end

SilentHillLabFrontScript11:
	ld hl, SilentHillLabFrontTextString8
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString9
	call OpenTextbox
	ld a, $0B
	call ApplyDeletionToMapObject
	ld a, $0C
	call ApplyDeletionToMapObject
	ld hl, SilentHillLabFrontTextString10
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString15
	call OpenTextbox
	ld hl, wd41c
	set 4, [hl]
	call Function20f8
	ld a, $0B
	ld [wMapScriptNumber], a
	call InitObjectMasks
	ret

SilentHillLabFrontScript12:
	call SilentHillLabFrontMoveDown
	ret z
	call SilentHillLabFrontRivalMovePokemon
	ret z
	ld hl, SilentHillLabFrontNPCIDs6
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontRivalMovePokemon:
	ld a, [wYCoord]
	cp 8
	ret nz
	ld hl, SilentHillLabFrontMovement9
	ld a, [wXCoord]
	cp 3
	jr z, .jump
	cp 4
	ret nz
	ld hl, SilentHillLabFrontMovement10
.jump
	push hl
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call FreezeAllOtherObjects
	pop hl
	ld a, 5
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, $0C
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	call xor_a
	ret

SilentHillLabFrontMovement9:
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	slow_step DOWN
	step_end

SilentHillLabFrontMovement10:
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	slow_step DOWN
	step_end

SilentHillLabFrontScript13:
	ld hl, SilentHillLabFrontTextString17
	call OpenTextbox
	call GetLabPokemon
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_START_TRAINER_BATTLE
	ld [wMapStatus], a
	ld a, $0D
	ld [wMapScriptNumber], a
	call InitObjectMasks
	ret

GetLabPokemon:
	ld hl, LabPokemon
	ld a, [wd266]
	ld b, a
.loop
	ld a, [hl+]
	cp b
	jr nz, .jump
	ld a, [hl]
	ld [wOtherTrainerID], a
	ld a, 9
	ld [wOtherTrainerClass], a
	ret
.jump
	inc hl
	jr .loop

LabPokemon:
	db DEX_KURUSU
	db 1
	db DEX_HAPPA
	db 2
	db DEX_HONOGUMA
	db 3

SilentHillLabFrontScript14:
	ld hl, SilentHillLabFrontTextString19
	ld a, [wBattleResult]
	and a
	jr nz, .skip
	ld hl, SilentHillLabFrontTextString18
.skip
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call FreezeAllOtherObjects
	ld a, 5
	ld hl, SilentHillLabFrontMovement11
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, $0E
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillLabFrontMovement11:
	slow_step DOWN
	step DOWN
	step DOWN
	step DOWN
	remove_object

SilentHillLabFrontScript15:
	call Function20f8
	ld a, $0F
	ld [wMapScriptNumber], a
	call InitObjectMasks
	ret

SilentHillLabFrontScript16:
	call SilentHillLabFrontMoveDown
	ret z
	call SilentHillLabFrontMoveRivalLeave
	ret z
	ld hl, SilentHillLabFrontNPCIDs7
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontMoveRivalLeave:
	ld a, [wYCoord]
	cp $0B
	ret nz
	ld hl, Movememt12+1
	ld a, [wXCoord]
	cp 3
	jr z, .jump
	cp 4
	ret nz
	ld hl, Movememt12
.jump
	push hl
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 8
	call FreezeAllOtherObjects
	pop hl
	ld a, 8
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, $10
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	call xor_a
	ret

Movememt12:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end

SilentHillLabFrontScript17:
	ld hl, SilentHillLabFrontTextString23
	call OpenTextbox
	ld hl, wd41d
	set 2, [hl]
	ld hl, wNumBagItems
	ld a, 5
	ld [wCurItem], a
	ld a, 6
	ld [wItemQuantity], a
	call ReceiveItem
	call Function20f8
	ld a, $11
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontScript18:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs7
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontScript19:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs9
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontTextPointers2:
	dw SilentHillLabFrontText1
	dw SilentHillLabFrontText2
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw PokemonBooksScript
	dw SilentHillLabFrontText3

SilentHillLabFrontText1:
	ld hl, SilentHillLabFrontTextString1
	call OpenTextbox
	ret

SilentHillLabFrontTextString1:	;	34:4ffd
	text_far _SilentHillLabFronttextString1
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText2:	;	34:50b3
	ld hl, wd39d
	bit 0, [hl]
	set 0, [hl]
	jr z, .jump
	res 0, [hl]
	ld hl, SilentHillLabFrontTextString2A
	jr .skip
.jump
	ld hl, SilentHillLabFrontTextString2B
.skip
	call OpenTextbox
	ret

SilentHillLabFrontTextString2A:	;	34:50ca
	text_far _SilentHillLabFronttextString2A
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString2B:	;	34:50ea
	text_far _SilentHillLabFronttextString2B
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText3:	;	34:5108
	ld hl, SilentHillLabFrontTextString3
	call OpenTextbox
	ret

SilentHillLabFrontTextString3:	;	34:510f
	text_far _SilentHillLabFronttextString3
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText4:	;	34:511b
	ld a, [wMapScriptNumber]
	cp $0E
	jp nc, SilentHillLabFrontText7
	ld hl, SilentHillLabFrontTextString4
	call OpenTextbox
	ret

SilentHillLabFrontTextString4:	;	34:512a
	text_far _SilentHillLabFronttextString4
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString5:	;	34:5138
	text_far _SilentHillLabFronttextString5
	start_asm
	call YesNoBox
	jr c, .jump
.loop
	ld hl, SilentHillLabFrontTextString6A
	call PrintText
	call TextAsmEnd
	ret

.jump
	ld hl, SilentHillLabFrontTextString6B
	call PrintText
	call YesNoBox
	jr c, .jump
	jr .loop
;rept $11
;	nop
;endr

SilentHillLabFrontTextString6A:	;	34:51ae
	text_far _SilentHillLabFronttextString6A
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString6B:	;	34:5332
	text_far _SilentHillLabFronttextString6B
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString7:	;	34:538d
	text_far _SilentHillLabFronttextString7
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText7:	;	34:53aa
	ld a, [wMapScriptNumber]
	cp $12
	jr z, .jump
	ld hl, SilentHillLabFrontTextString11A
	call OpenTextbox
	ret

.jump
	ld hl, SilentHillLabFrontTextString11B
	call OpenTextbox
	ret

SilentHillLabFrontTextString8:	;	34:53bf
	text_far _SilentHillLabFronttextString8
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString9:	;	34:53de
	text_far _SilentHillLabFronttextString9
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString10:	;	34:53f5
	text_far _SilentHillLabFronttextString10
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString11A:	;	34:54c3
	text_far _SilentHillLabFronttextString11A
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString11B:	;	34:54e3
	text_far _SilentHillLabFronttextString11B
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText8:	;	34:5560
	ld hl, SilentHillLabFrontTextString12
	call OpenTextbox
	ret

SilentHillLabFrontTextString12:	;	34:5567
	text_far _SilentHillLabFronttextString12
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText9:	;	34:559a
	ld hl, SilentHillLabFrontTextString13
	call OpenTextbox
	ret

SilentHillLabFrontTextString13:	;	34:55a1
	text_far _SilentHillLabFronttextString13
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText10:	;	34:561a
	ld hl, SilentHillLabFrontTextString14
	call OpenTextbox
	ret

SilentHillLabFrontTextString14:	;	34:5621
	text_far _SilentHillLabFronttextString14
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText11:	;	34:5658
	ld hl, SilentHillLabFrontTextString16
	call OpenTextbox
	ret

SilentHillLabFrontTextString15:	;	34:565f
	text_far _SilentHillLabFronttextString15
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString16:	;	34:5678
	text_far _SilentHillLabFronttextString16
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString17:	;	34:56a4
	text_far _SilentHillLabFronttextString17
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString18:	;	34:56d4
	text_far _SilentHillLabFronttextString18
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString19:	;	34:56ee
	text_far _SilentHillLabFronttextString19
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString20:	;	34:571f
	text_far _SilentHillLabFronttextString20
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString21:	;	34:5730
	text_far _SilentHillLabFronttextString21
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText12:	;	34:5814
	ld hl, SilentHillLabFrontTextString22
	call OpenTextbox
	ret

SilentHillLabFrontTextString22:	;	34:581b
	text_far _SilentHillLabFronttextString22
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText13:	;	34:583f
	ld hl, SilentHillLabFrontTextString24
	call OpenTextbox
	ret

SilentHillLabFrontTextString23:	;	34:5846
	text_far _SilentHillLabFronttextString23
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString24:	;	34:5a23
	text_far _SilentHillLabFronttextString24
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText14:	;	34:5a36
	ld hl, SilentHillLabFrontTextString25
	call OpenTextbox
	ret

SilentHillLabFrontTextString25:	;	34:5a3d
	text_far _SilentHillLabFronttextString25
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText15:	;	34:5a90
	ld hl, SilentHillLabFrontTextString26
	call OpenTextbox
	ret

SilentHillLabFrontTextString26:	;	34:5a97
	text_far _SilentHillLabFronttextString26
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText16:	;	34:5aea
	ld hl, SilentHillLabFrontTextString27
	call OpenTextbox
	ret

SilentHillLabFrontTextString27:	;	34:5af1
	text_far _SilentHillLabFronttextString27
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText17:	;	34:5b06
	ld hl, SilentHillLabFrontTextString28
	call OpenTextbox
	ret

SilentHillLabFrontTextString28:	;	34:5b0d
	text_far _SilentHillLabFronttextString28
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontTextString29:	;	34:5b4f
	text_far _SilentHillLabFronttextString29
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText18:	;	34:5b68
	ld hl, SilentHillLabFrontTextString30
	call OpenTextbox
	ret

SilentHillLabFrontTextString30:	;	34:5b6f
	text_far _SilentHillLabFronttextString30
	text_end
;rept $11
;	nop
;endr

SilentHillLabFrontText19:	;	34:5ba7
	ld hl, SilentHillLabFrontTextString31
	call OpenTextbox
	ret

SilentHillLabFrontTextString31:	;	34:5bae
	text_far _SilentHillLabFronttextString31
	text_end
;rept $11
;	nop
;endr

;	34:5be6
