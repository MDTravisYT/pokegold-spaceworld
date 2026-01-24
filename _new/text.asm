INCLUDE "constants.asm"

SECTION "_new/text.asm", ROMX

_WildPokemonAppearedText::
	text "Wild @"
	text_from_ram wEnemyMonNickname
	text_start
	line "appeared!"
	prompt

_HookedPokemonAttackedText::
	text "The hooked"
	line "@"
	text_from_ram wEnemyMonNickname
	cont "attacked!"
	prompt

_WantsToBattleText::
	text_from_ram wOTClassName
	text " wants"
	line "to fight!"
	prompt

_WildPokemonFledText::
	text "Wild @"
	text_from_ram wEnemyMonNickname
	text_start
	line "fled!"
	prompt

_EnemyPokemonFledText::
	text "Enemy @"
	text_from_ram wEnemyMonNickname
	text_start
	line "fled!"
	prompt
	
_HurtByPoisonText::
	text "<USER>"
	line "is hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by its burn!"
	prompt

_LeechSeedSapsText::
	text "LEECH SEED saps"
	line "<USER>!"
	prompt

_HasANightmareText::
	text "<USER>"
	line "has a NIGHTMARE!"
	prompt

_HurtByCurseText::
	text "<USER>'s"
	line "hurt by the CURSE!"
	prompt

_SandstormHitsText::
	text "The SANDSTORM hits"
	line "<USER>!"
	prompt
	
_PerishCountText:
	text "<USER>'s"
	line "PERISH count is @"
	deciram wNumSetBits, 1, 1
	text "!"
	prompt

_BattleText_SafeguardFaded:
	text "<USER>'s"
	line "SAFEGUARD faded!"
	prompt
	
_BattleText_ItemsCantBeUsedHere:
	text "Items can't be"
	line "used here."
	prompt
	
_BattleText_MonIsAlreadyOut_0f:
	text_from_ram wBattleMonNickname
	text_start
	line "is already out."
	prompt

_BattleText_MonCantBeRecalled:
	text_from_ram wBattleMonNickname
	text_start
	line "can't be recalled!"
	prompt
	
_BattleText_TheresNoPPLeftForThisMove:
	text "There's no PP left"
	line "for this move!"
	prompt

_BattleText_TheMoveIsDisabled:
	text "The move is"
	line "DISABLED!"
	prompt

_Unused_BattleText_MimicWhichMove:
	text "Mimic which move?"
	prompt

_BattleText_MonHasNoMovesLeft:
	text_from_ram wBattleMonNickname
	text_start
	line "has no moves left!"
	done
	
_BattleText_TargetsEncoreEnded:
	text "<TARGET>'s"
	line "ENCORE ended!"
	prompt
	
_GainedText::
	text_from_ram wStringBuffer1
	text " gained"
	line "@"
	text_end

_WithExpAllText::
	text "with EXP.ALL,"
	cont "@"
	text_end

_BoostedText::
	text "a boosted"
	cont "@"
	text_end

_ExpPointsText::
	deciram wStringBuffer2, 2, 4
	text " EXP. Points!"
	prompt

_GrewLevelText::
	text_from_ram wStringBuffer1
	text " grew"
	line "to level @"
	deciram wCurPartyLevel, 1, 3
	text "!@"
	text_end
	
_GoMonText::
	text "Go! @"
	text_from_ram wBattleMonNickname
	text "!"
	done

_DoItMonText::
	text "Do it! @"
	text_from_ram wBattleMonNickname
	text "!"
	done

_GoForItMonText::
	text "Go for it,"
	line "@"
	text_from_ram wBattleMonNickname
	text "!"
	done

_YourFoesWeakGetmMonText::
	text "Your foe's weak!"
	line "Get'm, @"
	text_from_ram wBattleMonNickname
	text "!"
	done
	
_EnoughText::
	text " that's"
	line "enough! Come back!"
	done

_OKExclamationText::
	text " OK!"
	line "Come back!"
	done

_GoodText::
	text " good!"
	line "Come back!"
	done

_ComeBackText::
	text " come"
	line "back!"
	done
	
_BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> picked up"
	line "¥@"
	deciram wPayDayMoney, 3, 6
	text "!"
	prompt