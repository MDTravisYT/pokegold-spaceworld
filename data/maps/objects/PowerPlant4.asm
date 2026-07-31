INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant4.asm", ROMX

	map_attributes PowerPlant4, POWER_PLANT_4, 0

PowerPlant4_MapEvents::
	dw $0 ; unknown

	def_warp_events
if DEF(FIXBUGS)
	warp_event 26, 30, POWER_PLANT_3, 3, 0
	warp_event 23, 19, POWER_PLANT_3, 4, 0
	warp_event 26,  6, POWER_PLANT_3, 5, 0
endc

	def_bg_events

	def_object_events

PowerPlant4_Blocks::
INCBIN "maps/PowerPlant4.blk"
