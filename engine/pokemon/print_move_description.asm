INCLUDE "constants.asm"

SECTION "engine/pokemon/print_move_description.asm", ROMX

PrintMoveDescription::
	push hl
	ld hl, MoveDescriptions_ENG
	ld a, [wSelectedItem]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, BANK(MoveDescriptions_ENG)
	call GetFarWord
	ld d, h
	ld e, l
	pop hl
	ld a, BANK(MoveDescriptions_ENG)
	jp PlaceFarString

INCLUDE "data/moves/descriptions.inc"
