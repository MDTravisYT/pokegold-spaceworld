INCLUDE "constants.asm"

SECTION "data/maps/objects/SlowpokeWellMain.asm", ROMX

	map_attributes SlowpokeWellMain, SLOWPOKE_WELL_MAIN, 0

SlowpokeWellMain_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event  9, 35, SLOWPOKE_WELL_ENTRANCE, 1, 0
endc

	def_bg_events

	def_object_events

SlowpokeWellMain_Blocks::
INCBIN "maps/SlowpokeWellMain.blk"
