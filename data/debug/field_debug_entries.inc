; FieldDebug_Jumptable constants
	const_def
	const FIELDDEBUG_RESET                   ; 0
	const FIELDDEBUG_CLOSE_MENU              ; 1 used
	const FIELDDEBUG_FRAME_TYPE              ; 2
	const FIELDDEBUG_MINIGAMES               ; 3 used
	const FIELDDEBUG_CHANGE_TRANSPORTATION   ; 4 used
	const FIELDDEBUG_CHANGE_TILESET          ; 5
	const FIELDDEBUG_TOWN_MAP                ; 6 used
	const FIELDDEBUG_SPRITE_VIEWER           ; 7 used
	const FIELDDEBUG_NAME_PLAYER             ; 8
	const FIELDDEBUG_TOOLGEAR                ; 9 used
	const FIELDDEBUG_CLEAR_EVENT_FLAGS       ; $a used
	const FIELDDEBUG_HEAL_POKEMON            ; $b used
	const FIELDDEBUG_CABLE_CLUB              ; $c
	const FIELDDEBUG_GO_TO_NEXT_PAGE         ; $d used
	const FIELDDEBUG_NPC_MOVEMENT_TEST       ; $e
	const FIELDDEBUG_POKEMON_FOLLOWING       ; $f
	const FIELDDEBUG_FOLLOW_NPC_TEST         ; $10 used
	const FIELDDEBUG_WARP                    ; $11 used
	const FIELDDEBUG_FIELD_CUT               ; $12
	const FIELDDEBUG_CHECK_TILE              ; $13
	const FIELDDEBUG_MOVE_TO_ROUTE1_ENTRANCE ; $14
	const FIELDDEBUG_TOGGLE_NPC_MOVEMENT     ; $15
	const FIELDDEBUG_MAP_VIEWER              ; $16 used
	const FIELDDEBUG_ITEM_TEST               ; $17
	const FIELDDEBUG_PC_MENU                 ; $18 used
	const FIELDDEBUG_POKEMART_MENU           ; $19 used
	const FIELDDEBUG_TELEPORT                ; $1a used
	const FIELDDEBUG_VRAM_VIEWER             ; $1b used
	const FIELDDEBUG_TRAINER_GEAR            ; $1c used

FieldDebug_MenuStrings:
	db "RESET@"
	db "CLOSE@"
	db "FRAMES@"
	db "GAME@"
	db "TRANSPORT@"
	db "CELL@"
	db "MAP@"
	db "CHARA@"
	db "NAME@"
	db "TOOLGEAR@"
	db "EVENT@"
	db "RECOVER@"
	db "LINK@"
	db "NEXT▶@"
	db "ANIMATION@"
	db "TAKE ME@"
	db "FOLLOW@"
	db "WARP@"
	db "MOW@"
	db "TILE@"
	db "AUTOMATIC@"
	db "MOVEMENT@"
	db "MAPPER@"
	db "ITEMS@"
	db "PC@"
	db "SHOP@"
	db "TELEPO!@"
	db "TEST@"
	db "EXPERIMENT@"

FieldDebug_Jumptable:
	dw FieldDebug_Reset
	dw FieldDebug_CloseMenu
	dw FieldDebug_FrameType
	dw FieldDebug_Minigames
	dw FieldDebug_ChangeTransportation
	dw FieldDebug_ChangeTileset
	dw FieldDebug_TownMap
	dw FieldDebug_SpriteViewer
	dw FieldDebug_NamePlayer
	dw FieldDebug_Toolgear
	dw FieldDebug_ClearEventFlags
	dw FieldDebug_HealPokemon
	dw FieldDebug_CableClub
	dw FieldDebug_GoToNextPage
	dw FieldDebug_NPCMovementTest
	dw FieldDebug_PokemonFollowing
	dw FieldDebug_FollowNPCTest
	dw FieldDebug_Warp
	dw FieldDebug_FieldCut
	dw FieldDebug_CheckTile
	dw FieldDebug_MoveToRoute1Entrance
	dw FieldDebug_ToggleNPCMovement
	dw FieldDebug_OpenMapViewer
	dw FieldDebug_ItemTest
	dw FieldDebug_PCMenu
	dw FieldDebug_PokemartMenu
	dw FieldDebug_Teleport
	dw FieldDebug_VRAMViewer
	dw FieldDebug_TrainerGear

if DEF(FIXBUGS)
DEF FIELDDEBUG_NUM_PAGES EQU 6
else
DEF FIELDDEBUG_NUM_PAGES EQU 3
endc

FieldDebug_Pages:
; page 1
	db 7    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_WARP
	db FIELDDEBUG_SPRITE_VIEWER
	db FIELDDEBUG_CHANGE_TRANSPORTATION
	db FIELDDEBUG_TOOLGEAR
	db FIELDDEBUG_PC_MENU
	db FIELDDEBUG_CLOSE_MENU
	db -1

; page 2
	db 7    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_POKEMART_MENU
	db FIELDDEBUG_HEAL_POKEMON
	db FIELDDEBUG_TRAINER_GEAR
	db FIELDDEBUG_MINIGAMES
	db FIELDDEBUG_MAP_VIEWER
	db FIELDDEBUG_CLOSE_MENU
	db -1

; page 3
	db 7    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_CLEAR_EVENT_FLAGS
	db FIELDDEBUG_VRAM_VIEWER
	db FIELDDEBUG_TELEPORT
	db FIELDDEBUG_FOLLOW_NPC_TEST
	db FIELDDEBUG_TOWN_MAP
	db FIELDDEBUG_CLOSE_MENU
	db -1

if DEF(FIXBUGS)
; page 4
	db 7    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_FRAME_TYPE
	db FIELDDEBUG_CHANGE_TILESET
	db FIELDDEBUG_NAME_PLAYER
	db FIELDDEBUG_CABLE_CLUB
	db FIELDDEBUG_NPC_MOVEMENT_TEST
	db FIELDDEBUG_CLOSE_MENU
	db -1
	
; page 5
	db 7    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_POKEMON_FOLLOWING
	db FIELDDEBUG_FIELD_CUT
	db FIELDDEBUG_CHECK_TILE
	db FIELDDEBUG_MOVE_TO_ROUTE1_ENTRANCE
	db FIELDDEBUG_TOGGLE_NPC_MOVEMENT
	db FIELDDEBUG_CLOSE_MENU
	db -1
	
; page 6
	db 3    ; number of items
	db FIELDDEBUG_GO_TO_NEXT_PAGE
	db FIELDDEBUG_ITEM_TEST
	db FIELDDEBUG_CLOSE_MENU
	db -1
endc