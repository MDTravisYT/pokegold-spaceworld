INCLUDE "constants.asm"

SECTION "data/maps/objects/SlowpokeWellEntrance.asm", ROMX

	map_attributes SlowpokeWellEntrance, SLOWPOKE_WELL_ENTRANCE, 0

SlowpokeWellEntrance_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event  9, 17, SLOWPOKE_WELL_MAIN, 1, 0
	warp_event 11,  0, BAADON, 10, 0
endc

	def_bg_events

	def_object_events

SlowpokeWellEntrance_Blocks::
INCBIN "maps/SlowpokeWellEntrance.blk"
