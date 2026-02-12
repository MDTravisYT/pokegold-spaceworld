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
	cp "<PAGE>"
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
;	push de
;	ld a, '▼'
;	ldcoord_a 18, 16
;	call ProtectedWaitBGMap
;	call PageWaitAorB_BlinkCursor
;	hlcoord 1, 10
;	lb bc, 7, 18
;	call ClearBox
;	ld c, 20
;	call DelayFrames
;	pop de
;	pop hl
;	hlcoord 1, 11
;	push hl
;	jp NextChar
;	
;PageWaitAorB_BlinkCursor::	;	this is even more hacky than the rest of the stuff
;.loop
;	call PageBlinkCursor
;	call GetJoypadDebounced
;	ldh a, [hJoySum]
;	and (A_BUTTON | B_BUTTON)
;	ret nz
;	call UpdateTime
;	call UpdateTimeOfDayPalettes
;	ld a, $01
;	ldh [hBGMapMode], a
;	call DelayFrame
;	jr .loop
;
;PageBlinkCursor:
;; Show a blinking cursor in the lower right-hand
;; corner of the screen
;; Will toggle between cursor and blank every
;; 16 frames.
;	ldh a, [hVBlankCounter]
;	and $10
;	jr z, .cursor_off
;	ld a, '▼'
;	jr .save_cursor_state
;.cursor_off
;	ld a, '　'
;.save_cursor_state
;	ldcoord_a (SCREEN_WIDTH - 2), (SCREEN_HEIGHT - 2)
;	ret
