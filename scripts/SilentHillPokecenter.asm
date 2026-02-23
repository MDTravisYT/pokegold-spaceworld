INCLUDE "constants.asm"

SECTION "scripts/SilentHillPokecenter.asm", ROMX

SilentHillPokecenter_ScriptLoader::
	ld hl, SilentHillPokecenterScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillPokecenterScriptPointers:
	dw SilentHillPokecenterScript
	dw SilentHillPokecenterNPCIDs

SilentHillPokecenterScript:
	ld hl, SilentHillPokecenterNPCIDs
	ld de, SilentHillPokecenterPCPointer
	call CallMapTextSubroutine
	ret

	dw SilentHillPokecenterNPCIDs

SilentHillPokecenterNPCIDs:
	db 0
	db 1
	db 2
	db 3
	db 4
	db $FF

SilentHillPokecenterPCPointer:
	dw SilentHillPokecenterPCText

SilentHillPokecenterPCText:
	ld hl, SilentHillPokecenterTextString1
	call OpenTextbox
	ret

SilentHillPokecenterTextString1:	;	34:46ab
	text_far _SilentHillPokecenterTextString1
	text_end
rept $c
	nop
endr

SilentHillPokecenter_TextPointers::	;	34:46bc
	dw SilentHillPokecenterNPCText1
	dw SilentHillPokecenterNPCText2
	dw SilentHillPokecenterNPCText3
	dw SilentHillPokecenterNPCText4
	dw SilentHillPokecenterNPCText5

SilentHillPokecenterNPCText1:	;	34:46c6
	ld hl, SilentHillPokecenterTextString2
	call OpenTextbox
	ret

SilentHillPokecenterTextString2:	;	34:46cd
	text_far _SilentHillPokecenterTextString2
	text_end
rept $42
	nop
endr

SilentHillPokecenterNPCText2:	;	34:4714
	ld hl, SilentHillPokecenterTextString3
	call OpenTextbox
	ret

SilentHillPokecenterTextString3:	;	34:471b
	text_far _SilentHillPokecenterTextString3
	text_end
rept $37
	nop
endr

SilentHillPokecenterNPCText3:	;	34:4757
	ld hl, SilentHillPokecenterTextString4
	call OpenTextbox
	ret

SilentHillPokecenterTextString4:	;	34:475e
	text_far _SilentHillPokecenterTextString4
	text_end
rept $3B
	nop
endr

SilentHillPokecenterNPCText4:	;	34:479e
	ld hl, SilentHillPokecenterTextString5
	call OpenTextbox
	ret

SilentHillPokecenterTextString5:	;	34:47a5
	text_far _SilentHillPokecenterTextString5
	text_end
rept $18
	nop
endr

SilentHillPokecenterNPCText5:	;	34:47c2
	ld hl, SilentHillPokecenterTextString6
	call OpenTextbox
	ret

SilentHillPokecenterTextString6:	;	34:47c9
	text_far _SilentHillPokecenterTextString6
	text_end
rept $7
	nop
endr

;	34:47d5
