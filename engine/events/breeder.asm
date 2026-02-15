INCLUDE "constants.asm"

SECTION "engine/events/breeder.asm", ROMX

_Breeder::
	ld a, [wBreederStatus]
	cp BREEDER_TWO_BREEDMON
	jr c, .continue
	cp BREEDER_EGG_READY
	jp z, .AskGiveEgg
	cp BREEDER_GAVE_EGG
	jr z, .continue

	call .CheckBreedmonCompatibility
	ld a, [wBreedingCompatibility]
	and a
	jr z, .no_egg_yet
; Autogenerates an egg if the Pokémon are compatible.
	ld a, BREEDER_EGG_READY
	ld [wBreederStatus], a
.no_egg_yet
	ld hl, .NoEggYetText
	call PrintText

.continue
	ld hl, .IntroText
	call PrintText
	ld hl, .MenuHeader
	call LoadMenuHeader
	call VerticalMenu
	push af
	call CloseWindow
	pop af
	jp c, .Exit
	ld a, [wMenuCursorY]
	cp 3
	jp z, .Exit
	cp 1
	jr z, .Deposit

	ld a, [wBreederStatus]
	and a
	jr z, .no_breedmons
	cp BREEDER_TWO_BREEDMON
	jr nz, .Withdraw

	ld hl, .CheckOnPokemonText
	call PrintText
	call YesNoBox
	jp c, .Exit

	jr .Withdraw

.no_breedmons
	ld hl, .DoesntHavePokemonText
	call PrintText
	jp .Exit

.Withdraw:
	ld a, GET_BREED_MON
	ld [wPokemonWithdrawDepositParameter], a
	predef RetrieveBreedmonOrBuffermon
	jp c, .party_full

	ld a, [wBreederStatus]
	sub 1
	jr z, .last_mon
	ld a, BREEDER_ONE_BREEDMON
.last_mon
	ld [wBreederStatus], a
	ld a, [wBreedMonGenders]
	srl a
	ld [wBreedMonGenders], a
	ld hl, .WithdrawnText
	call PrintText
	jp .Exit

.Deposit:
	ld a, [wBreederStatus]
	cp BREEDER_TWO_BREEDMON
	jp nc, .empty

	add PARTYMENUACTION_GIVE_MON
	call UseItem_SelectMon
	jp c, .Exit

	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData
	xor a
	ld [wMonType], a
	predef GetGender

	ld a, [wBreedMonGenders]
	rla
	ld [wBreedMonGenders], a

	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	ld a, GET_BREED_MON
	ld [wPokemonWithdrawDepositParameter], a
	predef DepositBreedmonOrBuffermon
	
	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	callfar RemoveMonFromPartyOrBox ; in the same bank, no need to farcall!
	ld a, [wCurPartySpecies]
	call PlayCry

	ld hl, .DepositedText
	call PrintText
	ld a, [wBreederStatus]
	inc a
	ld [wBreederStatus], a
	cp BREEDER_TWO_BREEDMON
	jr nz, .Exit

	ld hl, .LetsMakeBabiesText
	call PrintText

	call .CheckBreedmonCompatibility
	ld a, [wBreedingCompatibility]
	cp 80
	ld hl, .SeemToGetAlongText
	call z, PrintText

	ld a, [wBreedingCompatibility]
	cp 20
	ld hl, .DontSeemToGetAlongText
	call z, PrintText

	ld a, [wBreedingCompatibility]
	and a
	ld hl, .GendersDontMatchText
	call z, PrintText
	jr .Exit
.empty
	ld hl, .AlreadyHasTwoPokemonText
	call PrintText
	jr .Exit

.Exit:
	call ClearBGPalettes
	call RestoreScreenAndReloadTiles
	call GetMemSGBLayout
	jp ReloadFontAndTileset

.party_full
	ld hl, .BoxAndPartyFullText
	jp PrintText

.CheckBreedmonCompatibility:
	ld a, [wBreedMonGenders]
	ld b, a
	srl b
	xor b
	and $1
	jr z, .done

	ld a, [wBreedMon1ID]
	ld b, a
	ld a, [wBreedMon2ID]
	cp b
	jr nz, .different_id

	ld a, [wBreedMon1ID + 1]
	ld b, a
	ld a, [wBreedMon2ID + 1]
	cp b
	jr nz, .different_id
	ld a, 20
	jr .done
.different_id
	ld a, 80
.done
	ld [wBreedingCompatibility], a
	ret

.IntroText:	;	03:7c19
	text_far _BreederIntroText
	text_end
rept $8
	nop
endr

.MenuHeader:	;	03:7c30
	db MENU_BACKUP_TILES
	menu_coords 13, 4, 19, 11
	dw .MenuData
	db 1

.MenuData:	;	03:7c38
	db STATICMENU_CURSOR
	db 3
	db "DEPOSIT@"	; Deposit
	db "WITHDRAW@"	; Withdraw
	db "CANCEL@"	; Cancel

.DepositedText:	;	03:7c48
	text_far _BreederDepositedText
	text_end
rept $2
	nop
endr

.AlreadyHasTwoPokemonText:	;	03:7c4f
	text_far _BreederAlreadyHasTwoPokemonText
	text_end
rept $10
	nop
endr

.CheckOnPokemonText:	;	03:7c64
	text_far _BreederCheckOnPokemonText
	text_end
rept $C
	nop
endr

.DoesntHavePokemonText:	;	03:7c75
	text_far _BreederDoesntHavePokemonText
	text_end
rept $F
	nop
endr

.WithdrawnText:	;	03:7c89
	text_far _BreederWithdrawnText
	text_end
rept $3
	nop
endr

.BoxAndPartyFullText:	;	03:7c91
	text_far _BreederBoxAndPartyFullText
	text_end
rept $16
	nop
endr

.LetsMakeBabiesText:	;	03:7cac
	text_far _BreederLetsMakeBabiesText
	text_end
rept $A
	nop
endr

.SeemToGetAlongText:	;	03:7cbb
	text_far _BreederSeemToGetAlongText
	text_end
rept $A
	nop
endr

.DontSeemToGetAlongText:	;	03:7cca
	text_far _BreederDontSeemToGetAlongText
	text_end
rept $B
	nop
endr

.GendersDontMatchText:	;	03:7cda
	text_far _BreederGendersDontMatchText
	text_end
rept $B
	nop
endr

.NoEggYetText:	;	03:7cea
	text_far _BreederNoEggYetText
	text_end
rept $14
	nop
endr

.AskGiveEgg:	;	03:7d03
	ld hl, .EggLaidText
	call PrintText
	call YesNoBox
	jp c, .Exit

	ld a, BREEDER_GAVE_EGG
	ld [wBreederStatus], a
	ld a, [wBreedMon1Species]
	ld [wCurPartySpecies], a
	call PlayCry

	xor a
	ld [wMonType], a
	ld a, 5
	ld [wCurPartyLevel], a
	predef GiveEgg
	jp .Exit

.EggLaidText:	;	03:7d2e
	text_far _BreederEggLaidText
	text_end
rept $12
	nop
endr

Stub_MailEffect::	;	03:7d45
	ret
