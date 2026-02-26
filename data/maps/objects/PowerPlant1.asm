INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant1.asm", ROMX

	map_attributes PowerPlant1, POWER_PLANT_1, 0

PowerPlant1_MapEvents::
	dw $0 ; unknown

	def_warp_events
	warp_event  21,  3, POWER_PLANT_2, 1, 0
	warp_event  22,  3, POWER_PLANT_2, 1, 0

	def_bg_events

	def_object_events

PowerPlant1_Blocks::
INCBIN "maps/PowerPlant1.blk"
