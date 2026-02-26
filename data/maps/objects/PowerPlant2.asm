INCLUDE "constants.asm"

SECTION "data/maps/objects/PowerPlant2.asm", ROMX

	map_attributes PowerPlant2, POWER_PLANT_2, 0

PowerPlant2_MapEvents::
	dw $0 ; unknown

	def_warp_events
	warp_event  4,  9, POWER_PLANT_1, 1, 0

	def_bg_events

	def_object_events
	object_event  4, 0, SPRITE_EGG, SPRITEMOVEFN_TURN_DOWN, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0

PowerPlant2_Blocks::
INCBIN "maps/PowerPlant2.blk"
