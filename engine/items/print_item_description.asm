INCLUDE "constants.asm"

SECTION "engine/items/print_item_description.asm", ROMX

PrintItemDescription::
	push de
	ld hl, ItemDescriptions_ENG
	ld a, [wSelectedItem]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, BANK(ItemDescriptions_ENG)
	call GetFarWord
	ld d, h
	ld e, l
	pop hl
	ld a, BANK(ItemDescriptions_ENG)
	jp PlaceFarString

INCLUDE "data/items/descriptions.inc"