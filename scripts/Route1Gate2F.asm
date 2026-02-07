INCLUDE "constants.asm"

SECTION "scripts/Route1Gate2F.asm", ROMX

Route1Gate2F_ScriptLoader::
	ld hl, Route1Gate2FScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

Route1Gate2FScriptPointers:
	dw Route1Gate2FScript
	dw Route1Gate2FNPCIDs

Route1Gate2FNPCIDs:
	db 0
	db 1
	db $FF

Route1Gate2FSignPointers:
	dw Route1Gate2FTextSign1
	dw Route1Gate2FTextSign2
Route1Gate2F_TextPointers::
	dw Route1Gate2FTextNPC1
	dw Route1Gate2FTextNPC2

Route1Gate2FScript::
	ld hl, Route1Gate2FNPCIDs
	ld de, Route1Gate2FSignPointers
	call CallMapTextSubroutine
	ret

Route1Gate2FTextNPC1:
	ld hl, Route1Gate2FTextString1
	call OpenTextbox
	ret

Route1Gate2FTextNPC2:
	ld hl, Route1Gate2FTextString2
	call OpenTextbox
	ret

Route1Gate2FTextSign1:
	ld hl, Route1Gate2FTextString3
	call OpenTextbox
	ret

Route1Gate2FTextSign2:
	ld hl, Route1Gate2FTextString4
	call OpenTextbox
	ret

Route1Gate2FTextString1:	;	26:415e
	text_far _Route1Gate2FTextString1
	text_end
rept $34
	nop
endr

Route1Gate2FTextString2:	;	26:4197
	text_far _Route1Gate2FTextString2
	text_end
rept $3C
	nop
endr

Route1Gate2FTextString3:	;	26:41d8
	text_far _Route1Gate2FTextString3
	text_end
rept $22
	nop
endr

Route1Gate2FTextString4:	;	26:41ff
	text_far _Route1Gate2FTextString4
	text_end
rept $20
	nop
endr

;	26:4224