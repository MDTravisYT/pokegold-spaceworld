INCLUDE "constants.asm"

SECTION "_new/debugfightmenu.asm", ROMX

DEF _RAM_C2DC_ = $C2DC
DEF _RAM_C2DD_ = $C2DD
DEF _RAM_C2E0_ = $C2E0
DEF _RAM_C2F0_ = $C2F0
DEF _RAM_C340_ = $C340
DEF _RAM_C34F_ = $C34F

Functionfdb66:	
		ld a, $01
		ldh [hInMenu], a	; hInMenu = $FFA5
		ld a, $80
		ld [wBadges], a	; wBadges = $D163
		ld hl, wItems	; wItems = $D19E
		ld de, _DATA_FDC29_
_LABEL_FDB75_:	
		ld a, [de]
		cp $FF
		jr z, _LABEL_FDB8A_
		inc de
		ld [wCurItem], a	; wCurItem = $CD76
		ld a, [de]
		inc de
		ld [wItemQuantity], a	; wItemQuantity = $CD7D
		push de
		call ReceiveItem
		pop de
		jr _LABEL_FDB75_
	
_LABEL_FDB8A_:	
		call LoadFontsBattleExtra
		call ClearTileMap
		call ClearSprites
		ld hl, wShadowOAMEnd	; wShadowOAMEnd = $C2A0
		ld b, $01
		ld c, $12
		call DrawTextBox
		ld hl, $C2BA
		ld de, _DATA_FE169_
		call PlaceString
		ld hl, $C2F4
		ld de, _DATA_FE172_
		call PlaceString
		ld hl, $C319
		ld de, _DATA_FE181_
		call PlaceString
		xor a
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		ld [wEnemyMon], a	; wEnemyMon = $CDD9
		ld [wEnemyMonLevel], a	; wEnemyMonLevel = $CDE6
		ld [wBattleMonStructEnd], a	; wBattleMonStructEnd = $CA22
		ld [wOTPlayerName + 2], a	; wOTPlayerName + 2 = $D900
		ld b, a
		ld c, a
		ld hl, wOTPartySpecies	; wOTPartySpecies = $D914
		call _LABEL_FDC20_
		ld hl, wGameData2End	; wGameData2End = $D6AA
		call _LABEL_FDC20_
		ld de, wPartySpecies	; wPartySpecies = $D6AB
		ld hl, $C31C
_LABEL_FDBDC_:	
		push hl
		push bc
		dec hl
		ld a, $ED
		ld [hl], a
		ld bc, $000B
		add hl, bc
		ld a, $7F
		ld [hl], a
		push de
		pop de
		pop bc
		pop hl
_LABEL_FDBED_:	
		push bc
		push de
		call DelayFrame
		call GetJoypadDebounced
		pop de
		pop bc
		ldh a, [hJoySum]	; hJoySum = $FFA4
		bit 0, a
		jp nz, _LABEL_FDC36_
		bit 1, a
		jp nz, _LABEL_FDC75_
		bit 3, a
		jp nz, _LABEL_FDDA7_
		bit 4, a
		jp nz, _LABEL_FDCC6_
		bit 6, a
		jp nz, _LABEL_FDC82_
		bit 7, a
		jp nz, _LABEL_FDCA5_
		bit 2, a
		ld a, $04
		jp nz, Predef
		jr _LABEL_FDBED_
	
_LABEL_FDC20_:	
		xor a
		ldi [hl], a
		ldi [hl], a
		ldi [hl], a
		ldi [hl], a
		ldi [hl], a
		ldi [hl], a
		ld [hl], a
		ret
	
; Data from FDC29 to FDC35 (13 bytes)	
_DATA_FDC29_:	
	db $01, $63, $02, $63, $04, $63, $05, $63, $0E, $63, $28, $63, $FF
	
_LABEL_FDC36_:	
		inc b
		ld a, b
		cp $FE
		jr c, _LABEL_FDC3E_
		xor a
		ld b, a
_LABEL_FDC3E_:	
		ld [de], a
		ld [wApplyStatLevelMultipliersToEnemy], a	; wApplyStatLevelMultipliersToEnemy = $CE37
		push bc
		push hl
		push de
		ld bc, $8103
		call PrintNumber
		inc hl
		push hl
		ld de, _DATA_FE1ED_
		call PlaceString
		ld bc, hFFEC	; hFFEC = $FFEC
		add hl, bc
		ld de, _DATA_FE1ED_
		call PlaceString
		pop hl
		ld a, [wApplyStatLevelMultipliersToEnemy]	; wApplyStatLevelMultipliersToEnemy = $CE37
		and a
		jr nz, _LABEL_FDC69_
		ld de, _DATA_FE1F3_
		jr _LABEL_FDC6C_
	
_LABEL_FDC69_:	
		call GetPokemonName
_LABEL_FDC6C_:	
		call PlaceString
		pop de
		pop hl
		pop bc
		jp _LABEL_FDBED_
	
_LABEL_FDC75_:	
		dec b
		ld a, b
		cp $FE
		jp c, _LABEL_FDC3E_
		ld a, $FD
		ld b, a
		jp _LABEL_FDC3E_
	
_LABEL_FDC82_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		dec a
		cp $FF
		jp z, _LABEL_FDBED_
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		dec de
		dec hl
		ld a, $7F
		ld [hl], a
		push bc
		ld bc, hSerialReceive	; hSerialReceive = $FFD8
		add hl, bc
		pop bc
		ld a, $ED
		ld [hl], a
		inc hl
		push hl
		call _LABEL_FDD8C_
		pop hl
		jp _LABEL_FDBED_
	
_LABEL_FDCA5_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		inc a
		cp $06
		jp nc, _LABEL_FDBED_
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		inc de
		dec hl
		ld a, $7F
		ld [hl], a
		ld bc, $0028
		add hl, bc
		ld a, $ED
		ld [hl], a
		inc hl
		push hl
		call _LABEL_FDD8C_
		pop hl
		jp _LABEL_FDBED_
	
_LABEL_FDCC6_:	
		push hl
		push bc
		dec hl
		ld a, $7F
		ld [hl], a
		ld bc, $000B
		add hl, bc
		ld a, $ED
		ld [hl], a
		pop bc
		pop hl
_LABEL_FDCD5_:	
		push bc
		push de
		call DelayFrame
		call GetJoypadDebounced
		pop de
		pop bc
		ldh a, [hJoySum]	; hJoySum = $FFA4
		bit 0, a
		jp nz, _LABEL_FDD01_
		bit 1, a
		jp nz, _LABEL_FDD2A_
		bit 3, a
		jp nz, _LABEL_FDDA7_
		bit 5, a
		jp nz, _LABEL_FDBDC_
		bit 6, a
		jp nz, _LABEL_FDD3A_
		bit 7, a
		jp nz, _LABEL_FDD63_
		jr _LABEL_FDCD5_
	
_LABEL_FDD01_:	
		inc c
		ld a, c
		cp $65
		jr c, _LABEL_FDD0A_
		ld a, $01
		ld c, a
_LABEL_FDD0A_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		push de
		ld de, wOTPartySpecies	; wOTPartySpecies = $D914
		add e
		ld e, a
		jr nc, _LABEL_FDD16_
		inc d
_LABEL_FDD16_:	
		ld a, c
		ld [de], a
		push bc
		push hl
		ld bc, $000B
		add hl, bc
		ld bc, $8103
		call PrintNumber
		pop hl
		pop bc
		pop de
		jp _LABEL_FDCD5_
	
_LABEL_FDD2A_:	
		dec c
		ld a, c
		cp $65
		jr nc, _LABEL_FDD34_
		and a
		jp nz, _LABEL_FDD0A_
_LABEL_FDD34_:	
		ld a, $64
		ld c, a
		jp _LABEL_FDD0A_
	
_LABEL_FDD3A_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		dec a
		cp $FF
		jp z, _LABEL_FDCD5_
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		dec de
		push hl
		ld bc, $000A
		add hl, bc
		ld a, $7F
		ld [hl], a
		pop hl
		ld bc, hSerialReceive	; hSerialReceive = $FFD8
		add hl, bc
		push hl
		ld bc, $000A
		add hl, bc
		ld a, $ED
		ld [hl], a
		call _LABEL_FDD8C_
		pop hl
		jp _LABEL_FDCD5_
	
_LABEL_FDD63_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		inc a
		cp $06
		jp nc, _LABEL_FDCD5_
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		inc de
		push hl
		ld bc, $000A
		add hl, bc
		ld a, $7F
		ld [hl], a
		pop hl
		ld bc, $0028
		add hl, bc
		push hl
		ld bc, $000A
		add hl, bc
		ld a, $ED
		ld [hl], a
		call _LABEL_FDD8C_
		pop hl
		jp _LABEL_FDCD5_
	
_LABEL_FDD8C_:	
		ld hl, wPartySpecies	; wPartySpecies = $D6AB
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		add l
		ld l, a
		jr nc, _LABEL_FDD97_
		inc h
_LABEL_FDD97_:	
		ld a, [hl]
		ld b, a
		ld hl, wOTPartySpecies	; wOTPartySpecies = $D914
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		add l
		ld l, a
		jr nc, _LABEL_FDDA4_
		inc h
_LABEL_FDDA4_:	
		ld a, [hl]
		ld c, a
		ret
	
_LABEL_FDDA7_:	
		ld hl, wGameData2End	; wGameData2End = $D6AA
		ld de, wOTPartyCount	; wOTPartyCount = $D913
		xor a
		ld [hl], a
		inc hl
		ldi a, [hl]
		ld b, a
		ld c, $06
		xor a
		ld [wBattleMode], a	; wBattleMode = $CE00
_LABEL_FDDB8_:	
		ld a, b
		ld [wCurPartySpecies], a	; wCurPartySpecies = $CD78
		ld a, [hl]
		ld b, a
		inc de
		ld a, [de]
		and a
		jr z, _LABEL_FDDDB_
		ld [wCurPartyLevel], a	; wCurPartyLevel = $CDBB
		xor a
		ld [wMonType], a	; wMonType = $CB5A
		ld a, [wCurPartySpecies]	; wCurPartySpecies = $CD78
		and a
		jr z, _LABEL_FDDDB_
		push hl
		push de
		push bc
		ld a, $10
		call Predef
		pop bc
		pop de
		pop hl
_LABEL_FDDDB_:	
		inc hl
		dec c
		jr nz, _LABEL_FDDB8_
		ld b, $07
		ld hl, wPartySpecies	; wPartySpecies = $D6AB
		ld de, wOTPartyCount	; wOTPartyCount = $D913
_LABEL_FDDE7_:	
		inc de
		dec b
		jp z, Functionfdb66
		ldi a, [hl]
		and a
		jr z, _LABEL_FDDE7_
		ld a, [de]
		and a
		jr z, _LABEL_FDDE7_
		ld hl, _RAM_C2DC_
		ld b, $0F
		ld c, $14
		call ClearBox
		ld hl, _RAM_C2DC_
		ld b, $0F
		ld c, $14
		call ClearBox
		ld hl, _RAM_C2DC_
		ld b, $0F
		ld c, $14
		call ClearBox
		ld c, $14
		call DelayFrames
		ld a, $01
		ld [wBattleMode], a	; wBattleMode = $CE00
		ld de, _DATA_FE1F9_
		ld a, [wOTPlayerName + 2]	; wOTPlayerName + 2 = $D900
		cp $65
		jr c, _LABEL_FDE2E_
		ld a, $02
		ld [wBattleMode], a	; wBattleMode = $CE00
		ld de, _DATA_FE203_
_LABEL_FDE2E_:	
		ld hl, $C2F1
		call PlaceString
		ld hl, $C319
		ld de, _DATA_FE20D_
		call PlaceString
		ld a, [wEnemyMon]	; wEnemyMon = $CDD9
		ld b, a
		ld a, [wBattleMode]	; wBattleMode = $CE00
		dec a
		jr z, _LABEL_FDE78_
		ld a, [wBattleMonStructEnd]	; wBattleMonStructEnd = $CA22
		ld [wApplyStatLevelMultipliersToEnemy], a	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld b, a
		ld de, wApplyStatLevelMultipliersToEnemy	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld hl, $C341
		push bc
		ld bc, $8103
		call PrintNumber
		ld hl, $C345
		ld de, _DATA_FE233_
		call PlaceString
		ld hl, $4B78
		ld a, $0E
		call FarCall_hl
		ld hl, $C345
		ld de, wOTClassName	; wOTClassName = $CA2B
		call PlaceString
		pop bc
		jr _LABEL_FDE9D_
	
_LABEL_FDE78_:	
		ld a, b
		and a
		jr z, _LABEL_FDE9D_
		ld de, wApplyStatLevelMultipliersToEnemy	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld [de], a
		ld hl, $C341
		push bc
		ld bc, $8103
		call PrintNumber
		ld hl, $C345
		ld de, _DATA_FE233_
		call PlaceString
		call GetPokemonName
		ld hl, $C345
		call PlaceString
		pop bc
_LABEL_FDE9D_:	
		ld a, [wEnemyMonLevel]	; wEnemyMonLevel = $CDE6
		ld c, a
		ld de, wApplyStatLevelMultipliersToEnemy	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld [de], a
		ld hl, $C350
		push bc
		ld bc, $8103
		call PrintNumber
		pop bc
_LABEL_FDEB0_:	
		ld a, $7F
		ld [_RAM_C340_], a
		ld [_RAM_C34F_], a
		ld a, $ED
		ld [_RAM_C2F0_], a
_LABEL_FDEBD_:	
		push bc
		call DelayFrame
		call GetJoypadDebounced
		pop bc
		ldh a, [hJoySum]	; hJoySum = $FFA4
		bit 0, a
		jp nz, _LABEL_FDED8_
		bit 3, a
		jp nz, _LABEL_FE056_
		bit 7, a
		jp nz, _LABEL_FDF1F_
		jr _LABEL_FDEBD_
	
_LABEL_FDED8_:	
		ld hl, $C341
		ld de, _DATA_FE220_
		call PlaceString
		ld hl, $C331
		ld de, _DATA_FE233_
		call PlaceString
		xor a
		ld b, a
		ld c, a
		ld a, [wBattleMode]	; wBattleMode = $CE00
		dec a
		jr nz, _LABEL_FDF09_
		ld a, $02
		ld [wBattleMode], a	; wBattleMode = $CE00
		ld a, $7F
		ld [_RAM_C2E0_], a
		ld hl, $C2F1
		ld de, _DATA_FE203_
		call PlaceString
		jp _LABEL_FDEBD_
	
_LABEL_FDF09_:	
		ld a, $01
		ld [wBattleMode], a	; wBattleMode = $CE00
		ld a, $7F
		ld [_RAM_C2DD_], a
		ld hl, $C2F1
		ld de, _DATA_FE1F9_
		call PlaceString
		jp _LABEL_FDEBD_
	
_LABEL_FDF1F_:	
		ld a, $ED
		ld [_RAM_C340_], a
		ld a, $7F
		ld [_RAM_C34F_], a
		ld [_RAM_C2F0_], a
_LABEL_FDF2C_:	
		push bc
		call DelayFrame
		call GetJoypadDebounced
		pop bc
		ldh a, [hJoySum]	; hJoySum = $FFA4
		bit 0, a
		jp nz, _LABEL_FDF51_
		bit 1, a
		jp nz, _LABEL_FDFC5_
		bit 3, a
		jp nz, _LABEL_FE056_
		bit 4, a
		jp nz, _LABEL_FDFFD_
		bit 6, a
		jp nz, _LABEL_FDEB0_
		jr _LABEL_FDF2C_
	
_LABEL_FDF51_:	
		push bc
		ld hl, $C331
		ld de, _DATA_FE233_
		call PlaceString
		ld hl, $C345
		ld de, _DATA_FE233_
		call PlaceString
		pop bc
		ld a, [wBattleMode]	; wBattleMode = $CE00
		dec a
		jr z, _LABEL_FDF9F_
		inc b
		ld a, b
		cp $3E
		jr c, _LABEL_FDF73_
		ld b, $01
_LABEL_FDF73_:	
		ld a, b
		ld [wApplyStatLevelMultipliersToEnemy], a	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld de, wApplyStatLevelMultipliersToEnemy	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld hl, $C341
		push bc
		ld bc, $8103
		call PrintNumber
		ld a, [wApplyStatLevelMultipliersToEnemy]	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld [wBattleMonStructEnd], a	; wBattleMonStructEnd = $CA22
		ld hl, $4B78
		ld a, $0E
		call FarCall_hl
		ld hl, $C345
		ld de, wOTClassName	; wOTClassName = $CA2B
		call PlaceString
		pop bc
		jp _LABEL_FDF2C_
	
_LABEL_FDF9F_:	
		inc b
		ld a, b
		cp $FE
		jr c, _LABEL_FDFA7_
		ld b, $01
_LABEL_FDFA7_:	
		ld a, b
		ld [wApplyStatLevelMultipliersToEnemy], a	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld de, wApplyStatLevelMultipliersToEnemy	; wApplyStatLevelMultipliersToEnemy = $CE37
		ld hl, $C341
		push bc
		ld bc, $8103
		call PrintNumber
		call GetPokemonName
		ld hl, $C345
		call PlaceString
		pop bc
		jp _LABEL_FDF2C_
	
_LABEL_FDFC5_:	
		push bc
		ld hl, $C331
		ld de, _DATA_FE233_
		call PlaceString
		ld hl, $C345
		ld de, _DATA_FE233_
		call PlaceString
		pop bc
		ld a, [wBattleMode]	; wBattleMode = $CE00
		dec a
		jr z, _LABEL_FDFEE_
		dec b
		ld a, b
		cp $3E
		jr nc, _LABEL_FDFE9_
		and a
		jp nz, _LABEL_FDF73_
_LABEL_FDFE9_:	
		ld b, $3D
		jp _LABEL_FDF73_
	
_LABEL_FDFEE_:	
		dec b
		ld a, b
		cp $FE
		jr nc, _LABEL_FDFF8_
		and a
		jp nz, _LABEL_FDFA7_
_LABEL_FDFF8_:	
		ld b, $FD
		jp _LABEL_FDFA7_
	
_LABEL_FDFFD_:	
		ld a, $7F
		ld [_RAM_C340_], a
		ld a, $ED
		ld [_RAM_C34F_], a
_LABEL_FE007_:	
		push bc
		call DelayFrame
		call GetJoypadDebounced
		pop bc
		ldh a, [hJoySum]	; hJoySum = $FFA4
		bit 0, a
		jp nz, _LABEL_FE02C_
		bit 1, a
		jp nz, _LABEL_FE047_
		bit 3, a
		jp nz, _LABEL_FE056_
		bit 5, a
		jp nz, _LABEL_FDF1F_
		bit 6, a
		jp nz, _LABEL_FDEB0_
		jr _LABEL_FE007_
	
_LABEL_FE02C_:	
		inc c
		ld a, c
		cp $65
		jr c, _LABEL_FE034_
		ld c, $01
_LABEL_FE034_:	
		ld hl, $C350
		ld a, c
		ld de, wCurPartyLevel	; wCurPartyLevel = $CDBB
		ld [de], a
		push bc
		ld bc, $8103
		call PrintNumber
		pop bc
		jp _LABEL_FE007_
	
_LABEL_FE047_:	
		dec c
		ld a, c
		cp $65
		jr nc, _LABEL_FE051_
		and a
		jp nz, _LABEL_FE034_
_LABEL_FE051_:	
		ld c, $64
		jp _LABEL_FE034_
	
_LABEL_FE056_:	
		ld a, b
		and a
		jp z, _LABEL_FDEB0_
		ld a, c
		and a
		jp z, _LABEL_FDEB0_
		ld a, [wBattleMode]	; wBattleMode = $CE00
		dec a
		jr z, _LABEL_FE070_
		ld a, b
		ld [wOtherTrainerClass], a	; wOtherTrainerClass = $CE02
		ld a, c
		ld [wOtherTrainerID], a	; wOtherTrainerID = $CE05
		jr _LABEL_FE078_
	
_LABEL_FE070_:	
		ld a, c
		ld [wCurPartyLevel], a	; wCurPartyLevel = $CDBB
		ld a, b
		ld [wTempWildMonSpecies], a	; wTempWildMonSpecies = $CE01
_LABEL_FE078_:	
		call SetPalettes
		ld a, $80
		ld [wBadges], a	; wBadges = $D163
		ld hl, _DATA_FE23E_
		ld de, wGameData	; wGameData = $CE67
		ld bc, $0006
		call CopyBytes
		ld a, $25
		call Predef
		ld a, $01
		ldh [hBGMapMode], a	; hBGMapMode = $FFDE
		xor a
		ld [wNumFleeAttempts], a	; wNumFleeAttempts = $CE39
		ld hl, wPlayerSubStatus1	; wPlayerSubStatus1 = $CA3B
		ld bc, $0005
		call ByteFill
		ld hl, wEnemySubStatus1	; wEnemySubStatus1 = $CA40
		ld bc, $0005
		call ByteFill
		call LoadFont
		call LoadFontsBattleExtra
		call ClearTileMap
		call ClearSprites
		ld a, $E4
		ldh [rBGP], a
		ldh [rOBP0], a
		ldh [rOBP1], a
		ld hl, wShadowOAMEnd	; wShadowOAMEnd = $C2A0
		ld b, $01
		ld c, $12
		call DrawTextBox
		ld hl, $C2BA
		ld de, _DATA_FE169_
		call PlaceString
		ld hl, $C2F4
		ld de, _DATA_FE172_
		call PlaceString
		ld hl, $C319
		ld de, _DATA_FE181_
		call PlaceString
		ld de, wGameData2End	; wGameData2End = $D6AA
		xor a
		ld [de], a
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		inc de
		ld hl, $C31C
		push de
		push hl
_LABEL_FE0F2_:	
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		ld de, wPartySpecies	; wPartySpecies = $D6AB
		add e
		ld e, a
		jr nc, _LABEL_FE0FD_
		inc d
_LABEL_FE0FD_:	
		ld a, [de]
		cp $FF
		jp z, _LABEL_FE158_
		ld [wApplyStatLevelMultipliersToEnemy], a	; wApplyStatLevelMultipliersToEnemy = $CE37
		push hl
		ld bc, $8103
		call PrintNumber
		inc hl
		ld de, _DATA_FE1ED_
		call PlaceString
		call GetPokemonName
		call PlaceString
		pop hl
		push hl
		ld bc, $000B
		add hl, bc
		push hl
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		ld hl, wPartyMon1Level	; wPartyMon1Level = $D6D1
		ld bc, $0030
		call AddNTimes
		ld d, h
		ld e, l
		ld a, [de]
		ld [wCurPartyLevel], a	; wCurPartyLevel = $CDBB
		pop hl
		ld bc, $8103
		call PrintNumber
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		ld de, wOTPartySpecies	; wOTPartySpecies = $D914
		add e
		ld e, a
		jr nc, _LABEL_FE145_
		inc d
_LABEL_FE145_:	
		ld a, [wCurPartyLevel]	; wCurPartyLevel = $CDBB
		ld [de], a
		pop hl
		ld a, [wCurPartyMon]	; wCurPartyMon = $CD79
		inc a
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		ld bc, $0028
		add hl, bc
		jp _LABEL_FE0F2_
	
_LABEL_FE158_:	
		pop hl
		pop de
		ld a, [wPartyMon1]	; wPartyMon1 = $D6B2
		ld b, a
		ld a, [wPartyMon1Level]	; wPartyMon1Level = $D6D1
		ld c, a
		xor a
		ld [wCurPartyMon], a	; wCurPartyMon = $CD79
		jp _LABEL_FDBDC_
	
; Data from FE169 to FE171 (9 bytes)	
_DATA_FE169_:	
	db $92, $8C, $93, $7F, $9B, $E9, $81, $93, $50
	
; Data from FE172 to FE180 (15 bytes)	
_DATA_FE172_:	
	db $74, $F2, $7F, $7F, $C5, $CF, $B4, $7F, $7F, $7F, $7F, $A7, $3D, $A6, $50
	
; Data from FE181 to FE1EC (108 bytes)	
_DATA_FE181_:	
	db $F7, $F2, $ED, $F6, $F6, $F6, $7F, $E3, $E3, $E3, $E3, $E3, $7F, $7F, $F6, $F6
	db $F6, $4E, $F8, $F2, $7F, $F6, $F6, $F6, $7F, $E3, $E3, $E3, $E3, $E3, $7F, $7F
	db $F6, $F6, $F6, $4E, $F9, $F2, $7F, $F6, $F6, $F6, $7F, $E3, $E3, $E3, $E3, $E3
	db $7F, $7F, $F6, $F6, $F6, $4E, $FA, $F2, $7F, $F6, $F6, $F6, $7F, $E3, $E3, $E3
	db $E3, $E3, $7F, $7F, $F6, $F6, $F6, $4E, $FB, $F2, $7F, $F6, $F6, $F6, $7F, $E3
	db $E3, $E3, $E3, $E3, $7F, $7F, $F6, $F6, $F6, $4E, $FC, $F2, $7F, $F6, $F6, $F6
	db $7F, $E3, $E3, $E3, $E3, $E3, $7F, $7F, $F6, $F6, $F6, $50
	
; Data from FE1ED to FE1F2 (6 bytes)	
_DATA_FE1ED_:	
	db $7F, $7F, $7F, $7F, $7F, $50
	
; Data from FE1F3 to FE1F8 (6 bytes)	
_DATA_FE1F3_:	
	db $E3, $E3, $E3, $E3, $E3, $50
	
; Data from FE1F9 to FE202 (10 bytes)	
_DATA_FE1F9_:	
	db $A9, $81, $A6, $13, $A1, $AB, $8C, $8F, $E3, $50
	
; Data from FE203 to FE20C (10 bytes)	
_DATA_FE203_:	
	db $12, $B0, $E3, $A5, $E3, $7F, $7F, $7F, $7F, $50
	
; Data from FE20D to FE21F (19 bytes)	
_DATA_FE20D_:	
	db $74, $F2, $7F, $7F, $C5, $CF, $B4, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $A7
	db $3D, $A6, $4E
	
; Data from FE220 to FE232 (19 bytes)	
_DATA_FE220_:	
	db $F6, $F6, $F6, $7F
	ds 10, $E3
	db $7F, $F6, $F6, $F6, $50
	
; Data from FE233 to FE23D (11 bytes)	
_DATA_FE233_:	
	ds 10, $7F
	db $50
	
; Data from FE23E to FE254 (23 bytes)	
_DATA_FE23E_:	
	db $09, $E3, $A6, $13, $50, $50, $03, $63, $04, $63, $0B, $63, $10, $63, $11, $63
	db $12, $63, $13, $63, $14, $63, $FF