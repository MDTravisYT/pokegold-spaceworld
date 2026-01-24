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
	
_FaintedText:
	text "Enemy @"
	text_from_ram wBattleMonNickname
	text_start
	line "fainted!"
	prompt
	
_BattleText_RainContinuesToFall:
	text "Rain continues to"
	line "fall."
	prompt

_BattleText_TheSunlightIsStrong:
	text "The sunlight is"
	line "strong."
	prompt

_BattleText_TheRainStopped:
	text "The rain stopped."
	prompt

_BattleText_TheSunlightFaded:
	text "The sunlight"
	line "faded."
	prompt
	
_EnemyMonFainted:
	text "Enemy @"
	text_from_ram wEnemyMonNickname
	text_start
	line "fainted!"
	prompt
	
_GotMoneyForWinningText:
	text "<PLAYER> got ¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "for winning!"
	prompt

_BattleText_EnemyWasDefeated:
	text_from_ram wOTClassName
	line "was defeated!"
	prompt
	
_RivalLossText:
	text "<RIVAL>: Huh? I"
	line "should've chosen"
	cont "your #MON!"
	prompt
	
_BattleText_UseNextMon:
	text "Use next #MON?"
	done

_RivalWinText:
	text "<RIVAL>: Yes!"
	line "I guess I chose a"
	cont "good #MON!"
	prompt
	
_OutOfUsableMonsText:
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LostAgainstText:
	text "<PLAYER> lost to"
	line "@"
	text_from_ram wOTClassName
	text "!"
	prompt
	
_TrainerAboutToUseText:
	text_from_ram wOTClassName
	text " is"
	line "about to use"
	cont "@"
	text_from_ram wEnemyMonNickname
	text "!"

	para "Will <PLAYER>"
	line "change #MON?"
	done

_TrainerSentOutText:
	text_from_ram wOTClassName
	text " sent"
	line "out @"
	text_from_ram wEnemyMonNickname
	text "!"
	done
	
_BattleText_TheresNoWillToBattle::
	text "There's no will"
	line "to fight!"
	prompt
	
_BattleText_CantEscape:
	text "Can't escape!"
	prompt
	
_BattleText_TheresNoEscapeFromTrainerBattle:
	text "No! There's no"
	line "running from a"
	cont "trainer battle!"
	prompt

_BattleText_GotAwaySafely:
	text "Got away safely!"
	prompt

_BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "fled using a"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
	
_BattleText_UserHurtBySpikes:
	text "<USER>'s"
	line "hurt by SPIKES!"
	prompt
	
_RecoveredUsingText:
	text "<TARGET>"
	line "recovered using a"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
	
_UseItemFailedText:
	text "UseItemFailedText"	;	to be translated
;	text "<USER>が　そうびしていた"
;	line "@"
;	text_from_ram wStringBuffer1
;	text "が　さどうした！"
	prompt
	
_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpTextBattle::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt
	
_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is storing energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt
	
_HungOnText:
	text "<TARGET>"
	line "hung on with"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

_EnduredText:
	text "<TARGET>"
	line "ENDURED the hit!"
	prompt

_InLoveWithText:
	text "<USER>"
	line "is in love with"
	cont "<TARGET>!"
	prompt

_InfatuationText:
	text "<USER>'s"
	line "infatuation kept"
	cont "it from attacking!"
	prompt
	
_DisabledMoveText:
	text "<USER>'s"
	line "@"
	text_from_ram wStringBuffer1
	text " is"
	cont "DISABLED!"
	prompt
	
_LoafingAroundText:
	text_from_ram wBattleMonNickname
	text " is"
	line "loafing around."
	prompt

_BeganToNapText:
	text_from_ram wBattleMonNickname
	text " began"
	line "to nap!"
	prompt

_WontObeyText:
	text_from_ram wBattleMonNickname
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText:
	text_from_ram wBattleMonNickname
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText:
	text_from_ram wBattleMonNickname
	text " ignored"
	line "orders!"
	prompt
	
_UsedMove1Text::
	text_start
	line "used @@"

_UsedMove2Text::
	text_start
	line "used @@"

_UsedInsteadText::
	text "instead,"
	cont "@@"
	
_EndUsedMove1Text::
	text "!"
	done
	
_NoPPLeftText:
	text "But no PP is left"
	line "for the move!"
	prompt
	
_AttackMissedText:
	text "<USER>'s"
	line "attack missed!"
	prompt

_CrashedText:
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

_UnaffectedText:
	text "<TARGET>'s"
	line "unaffected!"
	prompt
	
_DoesntAffectText:
	text "It doesn't affect"
	line "<TARGET>!"
	prompt
	
_CriticalHitText:
	text "A critical hit!"
	prompt

_OneHitKOText:
	text "It's a one-hit KO!"
	prompt
	
_SuperEffectiveText:
	text "It's super-"
	line "effective!"
	prompt

_NotVeryEffectiveText:
	text "It's not very"
	line "effective…"
	prompt
	
_TookDownWithItText:
	text "<TARGET>"
	line "took down with it,"
	cont "<USER>!"
	prompt
	
_RageBuildingText:
	text "<USER>'s"
	line "RAGE is building!"
	prompt
	
_GotAnEncoreText:
	text "<TARGET>"
	line "got an ENCORE!"
	prompt
	
_SharedPainText:
	text "The battlers"
	line "shared pain!"
	prompt
	
_TransformedTypeText:
	text "<USER>"
	line "transformed into"
	cont "the @"
	text_from_ram wStringBuffer1
	text "-type!"
	prompt

_TookAimText:
	text "<USER>"
	line "took aim!"
	prompt
	
_SketchedText:
	text "<USER>"
	line "SKETCHED"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

_DestinyBondEffectText:
	text "<USER>'s"
	line "trying to take its"
	cont "opponent with it!"
	prompt
	
_SpiteEffectText:
	text "<TARGET>'s"
	line "@"
	text_from_ram wStringBuffer1
	text " was"
	cont "reduced by @"
	deciram wTextDecimalByte, 1, 1
	text "!"
	prompt
	
_BellChimedText:
	text "A bell chimed!"
	line ""
	prompt
	
_SubTookDamageText:
	text "The SUBSTITUTE"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubFadedText:
	text "<TARGET>'s"
	line "SUBSTITUTE faded!"
	prompt
	
_FellAsleepText:
	text "<TARGET>"
	line "fell asleep!"
	prompt
	
_AlreadyAsleepText:
	text "<TARGET>'s"
	line "already asleep!"
	prompt