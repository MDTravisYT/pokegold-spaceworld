INCLUDE "constants.asm"

SECTION "scripts/SilentHill.asm", ROMX

SilentHill_ScriptLoader::
	ld hl, SilentHillScriptPointers1
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillNPCIDs1:
	db 0
	db 2
	db 3
	db $FF

SilentHillNPCIDs2:
	db 2
	db 3
	db $FF

SilentHillNPCIDs3:
	db 1
	db 2
	db 3
	db $FF

SilentHillScriptPointers1:
	dw SilentHillScript1
	dw SilentHillNPCIDs1

SilentHillScriptPointers2:
	dw SilentHillScript2
	dw SilentHillNPCIDs1

SilentHillScriptPointers3:
	dw SilentHillScript3
	dw SilentHillNPCIDs1

SilentHillScriptPointers4:
	dw SilentHillScript4
	dw SilentHillNPCIDs2

SilentHillScriptPointers5:
	dw SilentHillScript5
	dw SilentHillNPCIDs3

SilentHillScriptPointers6:
	dw SilentHillScript6
	dw SilentHillNPCIDs2

SilentHillScriptPointers7:
	dw SilentHillScript7
	dw SilentHillNPCIDs2

SilentHillScript1:
	ld a, [wYCoord]
	cp 5
	ret nz
	ld a, [wXCoord]
	cp 5
	ret nz
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 02
	call FreezeAllOtherObjects
	ld a, 02
	ld hl, SilentHillMovement1
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, 1
	ld [wMapScriptNumber], a
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillMovement1:
	big_step UP
	big_step UP
	big_step UP
	step UP
	slow_step UP
	turn_head LEFT
	step_end

SilentHillScript2:
	ld a, 0
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillTextRival1
	call OpenTextbox
;	ld hl, SilentHillTextRival2
;	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
;	ld a, 2
;	ld hl, SilentHillMovement2
;	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ld a, 2
	ld [wMapScriptNumber], a
	call ClearSprites
	call ClearBGPalettes
	call ClearTileMap
	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_INTRO_CRASH_RG
	call PlaySFX
	ld a, 18
	ld [wDefaultSpawnPoint], a
	ld a, MAPSETUP_TELEPORT
	ldh [hMapEntryMethod], a
	call UnfreezeAllObjects
	ret

SilentHillMovement2:
	turn_head DOWN
	slow_step DOWN
	step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	remove_object

SilentHillScript3:
	call UnfreezeAllObjects
	ld a, 3
	ld [wMapScriptNumber], a
	call InitObjectMasks
	ret

SilentHillScript4:
	ld a, [wXCoord]
	cp 0
	jr nz, .bigjump
	ld a, [wYCoord]
	cp 8
	jr z, .jump
	cp 09
	jr nz, .bigjump
.jump
	call Function776a
	ld hl, SilentHillTextNorthExit
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 3
	call CopyMapObjectToReservedObjectStruct
	ld a, 3
	call FreezeAllOtherObjects
	ld a, [wYCoord]
	cp 9
	jr z, .jump2
	ld hl, SilentHillMovement3
	jr .skip
.jump2
	ld hl, SilentHillMovement4
.skip
	ld a, 03
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ld a, 4
	ld [wMapScriptNumber], a
	ret

.bigjump
	ld hl, SilentHillNPCIDs2
	ld de, SilentHillSignPointers
	call CallMapTextSubroutine
	ret

Function776a:
	ld hl, wd41a
	set 7, [hl]
	ld a, 1
	ld hl, wSilentHillLabFrontCurScript
	ld [hl], a
	ret

SilentHillMovement3:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	slow_step LEFT
	turn_head LEFT
	step_end

SilentHillMovement4:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	slow_step LEFT
	turn_head LEFT
	step_end

SilentHillScript5:
	ld a, 0
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillTextPokemonInGrassString
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 3
	call FreezeAllOtherObjects
	ld a, 0
	call UnfreezeObject
	ld b, 3
	ld c, 0
	call StartFollow
	ld a, [wYCoord]
	cp 9
	jr z, .jump
	ld hl, SilentHillMovement5
	jr .skip
.jump
	ld hl, SilentHillMovement6
.skip
	ld a, 3
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ld a, 5
	ld [wMapScriptNumber], a
	ret

SilentHillMovement5:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	slow_step UP
	remove_object

SilentHillMovement6:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	slow_step UP
	remove_object

SilentHillScript6:
	ld hl, SilentHillNPCIDs2
	ld de, SilentHillSignPointers
	call CallMapTextSubroutine
	ld hl, wd41b
	bit 2, [hl]
	ret z
	ld a, $12
	ld [wSilentHillLabFrontCurScript], a
	ld a, 6
	ld [wMapScriptNumber], a
	ret

SilentHillScript7:
	call CheckLabDoor
	ret z
	ld hl, SilentHillNPCIDs2
	ld de, SilentHillSignPointers
	call CallMapTextSubroutine
	ret

CheckLabDoor:
	ld a, [wYCoord]
	cp $C
	ret nz
	ld a, [wXCoord]
	cp $E
	jr z, .jump
	ld a, [wXCoord]
	cp $F
	ret nz
.jump
	ldh a, [hJoyState]
	bit 6, a
	ret z
	ld a, 0
	ld d, UP
	call SetObjectFacing
	ld hl, wJoypadFlags
	set 6, [hl]
	ld hl, SilentHillTextString1
	call OpenTextbox
	call LabClosed
	call xor_a
	ret

LabClosed:
	ld a, 0
	ld hl, SilentHillMovement7
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

SilentHillTextString1:	;	36:785f
	text_far _SilentHillTextString1
	text_end
rept $B
	nop
endr

SilentHillMovement7:	;	36:786f
	slow_step DOWN
	step_end

SilentHillSignPointers::
	dw SilentHillPlayerHouseText
	dw PokecenterSignScript
	dw SilentHillSignText1
	dw SilentHillLabText
	dw SilentHillRivalHouseText

SilentHillLabText:
	ld hl, SilentHillTextString2
	call OpenTextbox
	ret

SilentHillTextString2:	;	36:7882
	text_far _SilentHillTextString2
	text_end
rept $D
	nop
endr

SilentHillSignText1:	;	36:7894
	ld hl, SilentHillTextString3
	call OpenTextbox
	ret

SilentHillTextString3:	;	36:789b
	text_far _SilentHillTextString3
	text_end
rept $11
	nop
endr

SilentHillPlayerHouseText:	;	36:78b1
	ld hl, SilentHillTextString4
	call OpenTextbox
	ret

SilentHillTextString4:	;	36:78b8
	text_far _SilentHillTextString4
	text_end
rept $6
	nop
endr

SilentHillRivalHouseText:	;	36:78c3
	ld hl, SilentHillTextString5
	call OpenTextbox
	ret

SilentHillTextString5:	;	36:78ca
	text_far _SilentHillTextString5
	text_end
rept $6
	nop
endr

SilentHill_TextPointers::	;	36:78d5
	dw SilentHillTextRival1 ; west
	dw SilentHillTextNorthExit ; north
	dw SilentHillTextBackpack ; npc1
	dw SilentHillTextPokemonHate ; npc2

SilentHillTextRival1:	;	36:78dd
	text_far _SilentHillTextRival1
	text_end
rept $8E
	nop
endr

	start_asm
	call LoadStandardMenuHeader
	callfar MomNamePrompt
	call CloseWindow
	call GetMemSGBLayout
	call UpdateSprites
	call UpdateTimePals
	jp TextAsmEnd

MomNameMenuHeaderUnused:	;	36:7989
	db MENU_BACKUP_TILES ; flags
	menu_coords 00, 00, 10, 11
	dw .MomNameMenuDataUnused
	db 01 ; initial selection

.MomNameMenuDataUnused:	;	36:7991
	db STATICMENU_CURSOR
	db 04 ; items
	db "NEW NAME@"
	db "MOM@"
	db "MAMA@"
	db "MOMMY@"
rept $1
	nop
endr

SilentHillTextRival2: ; BYTE OFF	;	36:79ac
	text_far _SilentHillTextRival2
	text_end
rept $63
	nop
endr

SilentHillTextNorthExit:	;	36:7a14
	text_far _SilentHillTextNorthExit
	text_end
rept $11
	nop
endr

SilentHillTextPokemonInGrassString:	;	36:7a2a
	text_far _SilentHillTextPokemonInGrassString
	text_end
rept $6A
	nop
endr

SilentHillTextBackpack:	;	36:7a99
	ld hl, SilentHillTextBackpackString
	call OpenTextbox
	ret

SilentHillTextBackpackString:	;	36:7aa0
	text_far _SilentHillTextBackpackString
	text_end
rept $1B
	nop
endr

SilentHillTextPokemonHate:	;	36:7ac0
	ld hl, SilentHillTextPokemonHateString
	call OpenTextbox
	ret

SilentHillTextPokemonHateString:	;	36:7ac7
	text_far _SilentHillTextPokemonHateString
	text_end
rept $18
	nop
endr

;	36:7ae4
