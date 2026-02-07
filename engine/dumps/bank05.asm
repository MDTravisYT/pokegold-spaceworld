INCLUDE "constants.asm"

SECTION "engine/dumps/bank05.asm", ROMX

; Early duplicate of PlayerHouse2FRadioText, which is present in the map's bank in the final game.
; Uses the long "ポケモン" and "⋯⋯⋯⋯" instead of their shortcuts, and lacks the final sentence.
_Unreferenced_PokemonNewsScript::
	ld hl, .DuplicatePokemonNewsText
	call OpenTextbox
	ret

.DuplicatePokemonNewsText
	text "<PLAYER>は"	;	NOTRANSLATE
	line "ラジオのスイッチを　おした！"

	para "ジェイ　オー　ピー　エム"
	line "こちらは"
	cont "ポケモン　ほうそうきょく　です"

	para "ポケモンニュースを　おおくりします"

	para "⋯⋯　ポケモンの　せかいてきな"
	line "けんきゅうしゃ　オーキドはかせが"
	cont "カントーから　すがたを　けしました"
	cont "あらたな　けんきゅうの　ばしょを"
	cont "もとめて　いどうした　との"
	cont "みかたも　ありますが"
	cont "なんらかの　じけんに　まきこまれた"
	cont "かのうせいも　あり"
	cont "かんけいしゃは　とても"
	cont "しんぱい　しています"

	para "⋯⋯⋯⋯いじょう"
	line "ポケモンニュースでした"

	para "⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯"
	done

_PokemonBooksScript::
	ld hl, .PokemonBooksText
	call OpenTextbox
	ret

; "Crammed full of POKéMON books!" flavor text
.PokemonBooksText:	;	05:4db3
	text_far _PokemonBooksText
	text_end
rept $C
	nop
endr

_PlayerHouse1FFridgeScript::	;	05:4dc4
	ld hl, .PlayerHouse1FFridgeText
	call OpenTextbox
	ret

; Player's empty fridge flavor text
.PlayerHouse1FFridgeText:	;	05:4dcb
	text_far _PlayerHouse1FFridgeText
	text_end
rept $D
	nop
endr

_SilentHillHouseStoveScript::	;	05:4ddd
	ld hl, .SilentHillHouseStoveText
	call OpenTextbox
	ret

; Player's stove
.SilentHillHouseStoveText:	;	05:4de4
	text_far _SilentHillHouseStoveText
	text_end
rept $17
	nop
endr

_SilentHillHouseSinkScript::	;	05:4e00
	ld hl, .SilentHillHouseSinkText
	call OpenTextbox
	ret

.SilentHillHouseSinkText:	;	05:4e07
	text_far _SilentHillHouseSinkText
	text_end
rept $1B
	nop
endr

_PokecenterSignScript::	;	05:4e27
	ld hl, .PokecenterSignText
	call OpenTextbox
	ret

.PokecenterSignText:	;	05:4e2e
	text_far _PokecenterSignText
	text_end
rept $17
	nop
endr

_RivalHouseWindowScript::	;	05:4e4a
	ld hl, .RivalHouseWindowText
	call OpenTextbox
	ret

.RivalHouseWindowText:	;	05:4e51
	text_far _RivalHouseWindowText
	text_end
rept $9
	nop
endr

; Various scenes from the Pokemon anime that play on the player and rival's TVs
_SilentHillHouseTVScript::	;	05:4e5f
	ld a, [wTimeOfDay]
	and a
	jr nz, .not_day
	ld hl, .SilentHillHouseTVDayText
	jr .done

.not_day
	dec a
	jr nz, .not_night
	ld hl, .SilentHillHouseTVNightText
	jr .done

.not_night
	ld hl, .SilentHillHouseTVMorningText
.done
	call OpenTextbox
	ret

; Scene from "Pokémon: I Choose You!"
.SilentHillHouseTVDayText:	;	05:4e79
	text_far _SilentHillHouseTVDayText
	text_end
rept $2A
	nop
endr

; Scene from "Primeape Goes Bananas"
.SilentHillHouseTVNightText:	;	05:4ea8
	text_far _SilentHillHouseTVNightText
	text_end
rept $21
	nop
endr

; Scene from "Bulbasaur's Mysterious Garden"
.SilentHillHouseTVMorningText:	;	05:4ece
	text_far _SilentHillHouseTVMorningText
	text_end
rept $1E
	nop
endr

Unreferenced_CheckInlineTrainers:	;	05:4ef1
	ld a, [wDebugFlags]
	set UNK_DEBUG_FLAG_6_F, a ; Should probably be "bit UNK_DEBUG_FLAG_6_F, a"?
	ret nz
	xor a
	ldh [hSeenTrainerDistance], a
	ldh [hSeenTrainerDirection], a
	ld a, FOLLOWER + 1
	ldh [hSeenTrainerObject], a
	ld hl, wCurrMapInlineTrainers + (2 * FOLLOWER_OBJECT_INDEX) ; Skip wReservedObjectStruct and the player's struct
	ld de, 2 ; Length of wCurrMapInlineTrainers entries
	ld b, NUM_OBJECTS - FOLLOWER_OBJECT_INDEX
.loop
	ld a, [hl]
	and a
	jr nz, .found
	add hl, de
	ldh a, [hSeenTrainerObject]
	inc a
	ldh [hSeenTrainerObject], a
	dec b
	jr nz, .loop
	ret

.found
	ldh [hSeenTrainerDistance], a
	inc hl
	ld a, [hl]
	ldh [hSeenTrainerDirection], a
	ld hl, wDebugFlags
	set UNK_DEBUG_FLAG_6_F, [hl]
	ret

Unreferenced_TestTrainerWalkToPlayer:
	ld hl, wJoypadFlags
	set 6, [hl]
	ldh a, [hSeenTrainerObject]
	call FreezeAllOtherObjects
	ldh a, [hSeenTrainerObject]
	ld hl, .MovementData
	ldh a, [hSeenTrainerDistance]
	dec a
	ld e, a
	ld d, 0
	add hl, de
	call LoadMovementDataPointer
	ld hl, wOverworldFlags
	set OVERWORLD_PAUSE_MAP_PROCESSES_F, [hl]
	ld a, MAPSTATUS_EVENT_RUNNING
	call SetMapStatus
	ret

.MovementData:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

Bank05_FillerStart::
