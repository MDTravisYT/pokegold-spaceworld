INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant1.asm", ROMX

	map_attributes PowerPlant1, POWER_PLANT_1, 0

PowerPlant1_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event 12,  2, POWER_PLANT_2, 1, 0
	warp_event 13,  2, POWER_PLANT_2, 2, 0
	warp_event  4, 16, ROUTE_18, 4, 0
	warp_event  5, 16, ROUTE_18, 4, 0
endc

	def_bg_events

	def_object_events

PowerPlant1_Blocks::
INCBIN "maps/PowerPlant1.blk"
