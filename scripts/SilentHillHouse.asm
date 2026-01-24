INCLUDE "constants.asm"

SECTION "scripts/SilentHillHouse.asm", ROMX

SilentHillHouse_ScriptLoader::
	ld hl, SilentHillHouseScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillHouseScriptPointers:
	dw SilentHillHouseScript1
	dw SilentHillHouseNPCIDs1
	dw SilentHillHouseScript2
	dw SilentHillHouseNPCIDs2
	dw SilentHillHouseScript3
	dw SilentHillHouseNPCIDs1

SilentHillHouseScript1:
	ld hl, SilentHillHouseNPCIDs1
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseScript2:
	ld hl, SilentHillHouseNPCIDs2
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseScript3:
	ld hl, SilentHillHouseNPCIDs1
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseNPCIDs1:
	db 0
	db $FF

SilentHillHouseNPCIDs2:
	db 0
	db 1
	db $FF

SilentHillHouseTextPointers2::
	dw SilentHillHouseNPCText1
	dw SilentHillHouseTVScript
	dw PokemonBooksScript
	dw SilentHillHouseSinkScript
	dw SilentHillHouseStoveScript
	dw RivalHouseWindowScript

SilentHillHouseNPCText1:
	ld hl, wd41a
	bit 6, [hl]
	jr nz, .jump
	ld hl, SilentHillHouseTextString1
	call OpenTextbox
	ret

.jump
	call RefreshScreen
	callfar PokemonCenterPC
	call ScreenCleanup
	ret

SilentHillHouseTextString1:	;	34:489b
	text_far _SilentHillHouseTextString1
	start_asm
rept $1D
	nop
endr

	call YesNoBox
	jr c, .jump
	ld hl, wd41a
	set 6, [hl]
	ld hl, SilentHillHouseTextString2
	call PrintText
	call TextAsmEnd
	ret
.jump
	ld hl, SilentHillHouseTextString3
	call PrintText
	call TextAsmEnd
	ret

SilentHillHouseTextString2:	;	34:48db
	text_far _PlayerHouse2FTextString6
	text_end
rept $57
	nop
endr

SilentHillHouseTextString3:	;	34:4937
	text_far _SilentHillHouseTextString3
	text_end
rept $24
	nop
endr

SilentHillHouse_TextPointers::
	dw SilentHillHouseNPCText3
	dw SilentHillHouseNPCText4

SilentHillHouseNPCText3:
	ld hl, SilentHillHouseTextString4
	call OpenTextbox
	ret

SilentHillHouseTextString4:	;	34:4970
	text_far _SilentHillHouseTextString4
	text_end
;rept $57
;	nop
;endr

SilentHillHouseNPCText4:
	ld hl, wd41e
	bit 2, [hl]
	jr nz, .jump
	ld hl, wd41e
	set 2, [hl]
	ld hl, SilentHillHouseTextString5
	call OpenTextbox
	call WaitBGMap
	ld hl, SilentHillHouseTextString6
	jr .skip
.jump
	ld hl, SilentHillHouseTextString7
.skip
	call OpenTextbox
	ret

SilentHillHouseTextString5:	;	34:4991
	text_far _SilentHillHouseTextString5
	text_end
rept $93
	nop
endr

SilentHillHouseTextString6:	;	34:4a29
	text_far _SilentHillHouseTextString6
	text_end
rept $48
	nop
endr

SilentHillHouseTextString7:	;	34:4a76
	text_far _SilentHillHouseTextString7
	text_end
rept $31
	nop
endr

;	34:4aac