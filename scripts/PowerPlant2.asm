INCLUDE "constants.asm"

SECTION "scripts/PowerPlant2.asm", ROMX

PowerPlant2_ScriptLoader::
	ld a, [wYCoord]
	cp 2
	ret nz
	
	ld de, MUSIC_SPOTTED_ROCKET
	call PlayMusic
	
	ld hl, .flowertxt1
	call OpenTextbox
	
	ld a, 251
	ld [wTempWildMonSpecies], a
	ld a, 99
	ld [wCurPartyLevel], a
	ld hl, wOverworldFlags
	set 7, [hl]
	ld a, MAPSTATUS_START_WILD_BATTLE
	ld [wMapStatus], a
	
	ret

.flowertxt1:
	text "Howdy!"
	
	para "..."
	
	para "You know me."
	done

PowerPlant2_TextPointers::
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
	dw GameFreakText
