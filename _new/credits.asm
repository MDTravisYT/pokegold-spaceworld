INCLUDE "constants.asm"

SECTION "_new/credits.asm", ROMX

TranslationCredits:
	call ClearTileMap
	ld de, MUSIC_NONE
	call PlayMusic
	ld de, MUSIC_BICYCLE
	call PlayMusic
	ld de, CreditsText1
	call .string
	ld de, CreditsText2
	call .string
	ld de, CreditsText3
	call .string
	ld de, CreditsText4
	call .string
	ld a, MUSIC_TITLE
	ld [wMusicFadeID], a
	ld hl, wMusicFade
	ld [hl], 8
	ret
	
.string
	hlcoord 0, 3
	call PlaceString
	call GBFadeInFromWhite
	call .wait
	call .scroll
	ret
	
.wait
	call GetJoypad
	ldh a, [hJoyDown]
	and (A_BUTTON | B_BUTTON)
	jr nz, .done
	jr .wait
.done
	ret
	
.scroll
	xor a
	ldh [hSCY], a
.scrolloop
	ldh a, [hSCY]
	add a, 4
	cp a, $80
	jr z, .ret
	ldh [hSCY], a
	call DelayFrame
	jr .scrolloop
.ret
	call ClearTileMap
	xor a
	ldh [hSCY], a
	ret

CreditsText1:
	db   "#MON GOLD VERSION"
	next   "SPACEWORLD 1997 DEMO"
	next   "ENGLISH  TRANSLATION"
	next   "----- CREDITS ------"
	
	next "PROGRAM:"
	next "- MDTravis"
	db   "@"
CreditsText2:
	db   "TRANSLATIONS:"
	next "- tcrf.net          "
	db   "- mauvesea          "
	db   "- youtu.be/         "
	db   "    F4yIjpSaHgo"
	db   "@"
CreditsText3:
	db   "DISASSEMBLY         "
	db   "        REFERENCE:"
	next "- pret/             "
	db   " pokegold-spaceworld"
	db   "- pret/pokered      "
	db   "- pret/pokegold     "
	db   "- Narishma-gb/      "
	db   "    pokegreen       "
	db   "- Narishma-gb/      "
	db   "    pokeblue        "
	db   "- Narishma-gb/      "
	db   "    pokesilver      "
	db   "@"
CreditsText4:
	db   "SPECIAL THANKS:"
	next "- TCRF community    "
	db   "- pret community    "
	db   "- Public bugtesters "
	db   "@"