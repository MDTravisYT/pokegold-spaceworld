INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant2.asm", ROMX

	map_attributes PowerPlant2, POWER_PLANT_2, 0

PowerPlant2_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event  5, 17, POWER_PLANT_1, 1, 0
	warp_event  6, 17, POWER_PLANT_1, 2, 0
	warp_event 19,  5, POWER_PLANT_3, 1, 0
	warp_event 19,  6, POWER_PLANT_3, 2, 0
endc

	def_bg_events

	def_object_events

PowerPlant2_Blocks::
INCBIN "maps/PowerPlant2.blk"
