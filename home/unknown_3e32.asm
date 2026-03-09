INCLUDE "constants.asm"

SECTION "home/unknown_3e32.asm", ROM0

; Hackjob workshop

doTextCommand_hack::	;	hack to keep offsets correct
	push hl
	cp TX_FAR
	jp z, TextCommand_FAR
	ld hl, TextCommands
	jp	NextTextCommand_return	;	return back to normal execution at text.asm

TextCommand_FAR::
; write text from a different bank (little endian)
	pop hl
	ldh a, [hROMBank]
	push af

	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]

	ldh [hROMBank], a
	ld [MBC3RomBank], a

	push hl
	ld l, e
	ld h, d
	call TextCommandProcessor
	pop hl

	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	jp NextTextCommand
	
TMCharText_ENG::      db "TM@"
TrainerCharText_ENG:: db "TRAINER@"
PCCharText_ENG::      db "PC@"
RocketCharText_ENG::  db "ROCKET@"
POKeCharText_ENG::    db "POKé@"
SixDotsCharText_ENG:: db "⋯⋯@"
EnemyText_ENG::       db "Enemy @"

PlaceFarString::
	ld b, a
	ldh a, [hROMBank]
	push af

	ld a, b
	call Bankswitch
	call PlaceString

	pop af
	call Bankswitch
	ret
	
ContFromPage:
	ld b, a
	ldh a, [hROMBank]
	push af

	ld a, b
	call Bankswitch
.chk
	inc de
	ld a, [de]
	cp $37	;	"<PAGE>"
	jr z, .chkend
	jr .chk
.chkend
	inc de
	call PlaceString

	pop af
	call Bankswitch
	ret


GetFarWord::
; retrieve a halfword from a:hl, and return it in hl.
	; bankswitch to new bank
	ld [wTempBank], a
	ldh a, [hROMBank]
	push af
	ld a, [wTempBank]
	call Bankswitch

	; get halfword from new bank, put it in hl
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; bankswitch to previous bank and return
	pop af
	call Bankswitch
	ret
	
PageChar::
	ld b, h
	ld c, l
	pop hl
	ret
	
ErrorText:
	deciram hEventID, 1, 2
	text "ERROR"
	done