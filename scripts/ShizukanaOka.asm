INCLUDE "constants.asm"

SECTION "scripts/ShizukanaOka.asm", ROMX

ShizukanaOka_ScriptLoader::
	ld hl, ShizukanaOkaScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

ShizukanaOkaScriptPointers:
	dw ShizukanaOkaScript
	dw ShizukanaOkaNPCIDs

ShizukanaOkaNPCIDs:
	db 0
	db 1
	db 2
	db 3
	db 4
	db 5
	db $FF

ShizukanaOkaSignPointers:
	dw ShizukanaOkaSignpost1
	dw ShizukanaOkaSignpost2

ShizukanaOka_TextPointers:
	dw ShizukanaOkaText1
	dw ShizukanaOkaTrainer2
	dw ShizukanaOkaTrainer3
	dw ShizukanaOkaTrainer4
	dw ShizukanaOkaTrainer5
	dw ShizukanaOkaTrainer6

ShizukanaOkaScript:
	ld hl, ShizukanaOkaNPCIDs
	ld de, ShizukanaOkaSignPointers
	call CallMapTextSubroutine
	ret

ShizukanaOkaText1:
	ld hl, ShizukanaOkaText1String
	call OpenTextbox
	ret

ShizukanaOkaTrainer2:
	ld hl, $D3A5
	bit 1, [hl]
	jr nz, .Trainer2Won
	ld hl, ShizukanaOkaTrainer2EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 1, [hl]
	ld a, TRAINER_SCHOOLBOY
	ld [wOtherTrainerClass], a
	ld a, SCHOOLBOY_TETSUYA
	ld [wOtherTrainerID], a
	call InitTrainerBattle
	ret
.Trainer2Won ;Already won
	ld hl, ShizukanaOkaTrainer2WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer3:
	ld hl, wd3a5
	bit 2, [hl]
	jr nz, .Trainer3Won
	ld hl, ShizukanaOkaTrainer3EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 2, [hl]
	ld a, TRAINER_BUG_CATCHER_BOY
	ld [wOtherTrainerClass], a
	ld a, BUG_CATCHER_BOY_JUNICHI
	ld [wOtherTrainerID], a
	call InitTrainerBattle
	ret
.Trainer3Won ;Already won
	ld hl, ShizukanaOkaTrainer3WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer4:
	ld hl, wd3a5
	bit 3, [hl]
	jr nz, .Trainer4Won
	ld hl, ShizukanaOkaTrainer4EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 3, [hl]
	ld a, TRAINER_FIREBREATHER
	ld [wOtherTrainerClass], a
	ld a, FIREBREATHER_AKITO
	ld [wOtherTrainerID], a
	call InitTrainerBattle
	ret
.Trainer4Won ;Already won
	ld hl, ShizukanaOkaTrainer4WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer5:
	ld hl, wd3a5
	bit 4, [hl]
	jr nz, .Trainer5Won
	ld hl, ShizukanaOkaTrainer5EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 4, [hl]
	ld a, TRAINER_BEAUTY
	ld [wOtherTrainerClass], a
	ld a, BEAUTY_MEGUMI
	ld [wOtherTrainerID], a
	call InitTrainerBattle
	ret
.Trainer5Won ;Already won
	ld hl, ShizukanaOkaTrainer5WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer6:
	ld hl, wd3a5
	bit 5, [hl]
	jr nz, .Trainer6Won
	ld hl, ShizukanaOkaTrainer6EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 5, [hl]
	ld a, TRAINER_BUG_CATCHER_BOY
	ld [wOtherTrainerClass], a
	ld a, BUG_CATCHER_BOY_SOUSUKE
	ld [wOtherTrainerID], a
	call InitTrainerBattle
	ret
.Trainer6Won ;Already won
	ld hl, ShizukanaOkaTrainer6WonString
	call OpenTextbox
	ret

ShizukanaOkaSignpost2:
	ld hl, ShizukanaOkaSignpost2String
	call OpenTextbox
	ret

ShizukanaOkaSignpost1:
	ld hl, ShizukanaOkaSignpost1String
	call OpenTextbox
	ret

ShizukanaOkaTrainer6EncounterString:	;	2f:5752
	text_far _ShizukanaOkaTrainer6EncounterString
	text_end
rept $3D
	nop
endr

ShizukanaOkaTrainer6WonString:	;	2f:5794
	text_far _ShizukanaOkaTrainer6WonString
	text_end
rept $25
	nop
endr

ShizukanaOkaTrainer5EncounterString:	;	2f:57be
	text_far _ShizukanaOkaTrainer5EncounterString
	text_end
rept $2E
	nop
endr

ShizukanaOkaTrainer5WonString:	;	2f:57f1
	text_far _ShizukanaOkaTrainer5WonString
	text_end
rept $15
	nop
endr

ShizukanaOkaTrainer4EncounterString:	;	2f:580b
	text_far _ShizukanaOkaTrainer4EncounterString
	text_end
rept $1D
	nop
endr

ShizukanaOkaTrainer4WonString:	;	2f:582d
	text_far _ShizukanaOkaTrainer4WonString
	text_end
rept $32
	nop
endr

ShizukanaOkaTrainer3EncounterString:	;	2f:5864
	text_far _ShizukanaOkaTrainer3EncounterString
	text_end
rept $1c
	nop
endr

ShizukanaOkaTrainer3WonString:	;	2f:5885
	text_far _ShizukanaOkaTrainer3WonString
	text_end
rept $2E
	nop
endr

ShizukanaOkaTrainer2EncounterString:	;	2f:58b8
	text_far _ShizukanaOkaTrainer2EncounterString
	text_end
rept $30
	nop
endr

ShizukanaOkaTrainer2WonString:	;	2f:58ed
	text_far _ShizukanaOkaTrainer2WonString
	text_end
rept $28
	nop
endr

ShizukanaOkaText1String:	;	2f:591a
	text_far _ShizukanaOkaText1String
	text_end
rept $49
	nop
endr

ShizukanaOkaSignpost2String:	;	2f:5968
	text_far _ShizukanaOkaSignpost2String
	text_end
rept $12
	nop
endr

ShizukanaOkaSignpost1String:	;	2f:597f
	text_far _ShizukanaOkaSignpost1String
	text_end

;	bank ends here, no need to pad
