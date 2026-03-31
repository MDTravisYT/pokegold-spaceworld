INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant3.asm", ROMX

	map_attributes PowerPlant3, POWER_PLANT_3, 0

PowerPlant3_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event  0,  6, POWER_PLANT_2, 3, 0
	warp_event  0,  7, POWER_PLANT_2, 4, 0
	warp_event 26, 30, POWER_PLANT_4, 1, 0
	warp_event 23, 19, POWER_PLANT_4, 2, 0
	warp_event 26,  6, POWER_PLANT_4, 3, 0
endc

	def_bg_events

	def_object_events

PowerPlant3_Blocks::
INCBIN "maps/PowerPlant3.blk"
