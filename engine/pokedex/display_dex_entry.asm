INCLUDE "constants.asm"

SECTION "engine/pokedex/display_dex_entry.asm", ROMX

; Meters
DEF POKEDEX_m EQU $60
; Kilograms
DEF POKEDEX_k EQU $61
DEF POKEDEX_g EQU $62

_DisplayDexEntry:
	hlcoord 9, 6
	ld de, PokedexText_HeightWeight
	call PlaceString
	call GetPokemonName
	hlcoord 9, 2
	call PlaceString
	ld hl, PokedexEntryPointers1
	ld a, [wTempSpecies]
	cp DEX_VOLTORB
	jr c, .got_dex_entries
	sub DEX_VOLTORB - 1
	ld hl, PokedexEntryPointers2

.got_dex_entries
	dec a
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	hlcoord 9, 4
	call PlaceString
	ld h, b
	ld l, c
	push de
;	ld de, PokedexText_Pokemon
;	call PlaceString
	hlcoord 2, 8
	ld a, '№'
	ld [hli], a
	ld a, '．'
	ld [hli], a
	ld de, wTempSpecies
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNumber
; Return if species isn't caught
	callfar Pokedex_CheckCaught
	push af
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	pop af
	pop de
	
	push af
	push bc
	push de
	push hl

	call WaitBGMap
	call GetBaseData
	hlcoord 1, 1
	call PrepMonFrontpic
	ld a, [wCurPartySpecies]
	call PlayCry

	pop hl
	pop de
	pop bc
	pop af
	
	ret z

	inc de
	ld a, [de]
	and a
	jr z, .skip_height
	
	hlcoord 12, 6
	lb bc, 1, 2
	call PrintNumber ; print feet (height)
	ld a, '′'
	ld [hl], a
	inc de ; de = address of inches (height)
	hlcoord 15, 6
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNumber ; print inches (height)
	ld a, '″'
	ld [hl], a

.skip_height
	inc de
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	or b
	push de
	jr z, .skip_weight

	ld hl, hPokedexTempWeight
	ld a, [hl]
	push af
	ld a, [de]
	ld [hli], a
	ld a, [hl]
	push af
	dec de
	ld a, [de]
	ld [hl], a
	ld de, hPokedexTempWeight
	hlcoord 11, 8
	lb bc, 2, 5
	call PrintNumber

	hlcoord 14, 8
	ldh a, [hPokedexTempWeight + 1]
	sub 10
	ldh a, [hPokedexTempWeight]
	sbc 0
	jr nc, .less_than_1_kilogram
	ld [hl], '０'

.less_than_1_kilogram
; Shift last digit to the right and put decimal point in its place.
	inc hl
	ld a, [hli]
	ld [hld], a
	ld [hl], '．'

	pop af
	ldh [hPokedexTempWeight + 1], a
	pop af
	ldh [hPokedexTempWeight], a
.skip_weight	;	below handles dex entry!!
;	first page
	ld de, wDexPage
	ld a, 0
	ld [de], a
	call .find_blurb_pointer
	ld a, BANK(PokedexEntryPointers1_ENG)
	call GetFarWord
	ld d, h
	ld e, l
	pop hl
	ld a, BANK(PokedexEntryPointers1_ENG)
	hlcoord 1, 11
	call PlaceFarString
	ld a, '▼'
	ldcoord_a 18, 16
	callfar Pokedex_DexEntryInput

;	second page
	ld de, wDexPage
	ld a, 1
	ld [de], a
	
	hlcoord 1, 10
	lb bc, 7, 18
	call ClearBox
	
	call .find_blurb_pointer
	ld a, BANK(PokedexEntryPointers1_ENG)
	call GetFarWord
	ld d, h
	ld e, l
	ld a, BANK(PokedexEntryPointers1_ENG)
	hlcoord 1, 11
	call ContFromPage
	
	ret
	
.find_blurb_pointer
	ld hl, PokedexEntryPointers1_ENG
	ld a, [wTempSpecies]
	cp DEX_VOLTORB
	jr c, .got_dex_entries2
	sub DEX_VOLTORB - 1
	ld hl, PokedexEntryPointers2_ENG
.got_dex_entries2
	ret

PokedexText_HeightWeight:
	db   "HT  ?′??″"
	next "WT   ???lb@"
	text_end

PokedexText_Pokemon:
	db " <PK><MN>" ; "Pokémon" (ポケモン)
	text_end
