INCLUDE "constants.asm"

SECTION "_new/text/battle.asm", ROMX

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
	text " @"
	text_from_ram wStringBuffer1
	text_start
	line "wants to fight!"
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
	text " "
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
	
_UseItemFailedText:	;	translated by Discord user @mauvesea
	text "<USER>'s @"
	text_from_ram wStringBuffer1
	text " "
	line "has activated!"
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

_MoveNameText::
	text_from_ram wStringBuffer2
	db "@@"
	;	fallthrough
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
	
_WasPoisonedText:
	text "<TARGET>"
	line "was poisoned!"
	prompt
	
_AlreadyPoisonedText:
	text "<TARGET>'s"
	line "already poisoned!"
	prompt
	
_BadlyPoisonedText:
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt
	
_SuckedHealthText:
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamEatenText:
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt
	
_WasBurnedText:
	text "<TARGET>"
	line "was burned!"
	prompt
	
_DefrostedOpponentText:
	text "<TARGET>"
	line "was defrosted!"
	prompt
	
_WasFrozenText:
	text "<TARGET>"
	line "was frozen solid!"
	prompt
	
_Text_BattleEffectActivate::
	text "<USER>'s"
	line "@"
	text_from_ram wStringBuffer2
	text_end

_BattleStatWentWayUpText::
	text_exit
	text "<SCROLL>went way up!"
	prompt

_BattleStatWentUpText::
	text " went up!"
	prompt
	
_Text_BattleFoeEffectActivate::
	text "<TARGET>'s"
	line "@"
	text_from_ram wStringBuffer2
	text_end

_BattleStatSharplyFellText::
	text_exit
	text "<SCROLL>sharply fell!"
	prompt

_BattleStatFellText::
	text " fell!"
	prompt
	
_FledFromBattleText::
	text "<USER>"
	line "fled from battle!"
	prompt

_FledInFearText:
	text "<TARGET>"
	line "fled in fear!"
	prompt

_BlownAwayText:
	text "<TARGET>"
	line "was blown away!"
	prompt
	
_PlayerHitTimesText:
	text "Hit @"
	deciram wPlayerDamageTaken, 1, 1
	text " times!"
	prompt

_EnemyHitTimesText:
	text "Hit @"
	deciram wEnemyDamageTaken, 1, 1
	text " times!"
	prompt
	
_BattleMadeWhirlwindText::
	text_start
	line "made a whirlwind!"
	prompt

_BattleTookSunlightText::
	text_start
	line "took in sunlight!"
	prompt

_BattleLoweredHeadText::
	text_start
	line "lowered its head!"
	prompt

_BattleGlowingText::
	text_start
	line "is glowing!"
	prompt

_BattleFlewText::
	text_start
	line "flew up high!"
	prompt

_BattleDugText::
	text_start
	line "dug a hole!"
	prompt
	
_MistText:
	text "<USER>'s"
	line "shrouded in MIST!"
	prompt
	
_GettingPumpedText:
	text_exit
	text "<USER>'s"
	line "getting pumped!"
	prompt
	
_RecoilText:
	text "<USER>'s"
	line "hit with recoil!"
	prompt
	
_BecameConfusedText:
	text "<TARGET>"
	line "became confused!"
	prompt
	
_MadeSubstituteText:
	text "<USER>"
	line "made a SUBSTITUTE!"
	prompt

_HasSubstituteText:
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubText:
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt
	
_MimicLearnedMoveText:
	text "<USER>"
	line "learned"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
	
_WasSeededText:
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedText:
	text "<TARGET>"
	line "evaded the attack!"
	prompt
	
_WasDisabledText:
	text "<TARGET>'s"
	line "@"
	text_from_ram wStringBuffer1
	text " was"
	cont "DISABLED!"
	prompt
	
_CoinsScatteredText:
	text "Coins scattered"
	line "everywhere!"
	prompt
	
_EliminatedStatsText:
	text "All stat changes"
	line "were eliminated!"
	prompt
	
_WentToSleepText:
	text "<USER>"
	line "went to sleep!"
	done

_RestedText:
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText:
	text "<USER>"
	line "regained health!"
	prompt
	
_TransformedText:
	text "<USER>"
	line "TRANSFORMED into"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
	
_LightScreenEffectText:
	text "<USER>'s"
	line "SPCL.DEF rose!"
	prompt

_ReflectEffectText:
	text "<USER>'s"
	line "DEFENSE rose!"
	prompt
	
_NothingHappenedText::
	text "Nothing happened!"
	prompt
	
_NoEffectText::
	text "No effect!"
	prompt
	
_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt
	
_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt
	
_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt
	
_ProtectedByText:
	text "<TARGET>'s"
	line "protected by"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
	
_MirrorMoveFailedText:
	text "The MIRROR MOVE"
	next "failed!"
	prompt
	
_StoleText:
	text "<USER>"
	line "stole @"
	text_from_ram wStringBuffer1
	text_start
	cont "from its foe!"
	prompt
	
_CantEscapeNowText:
	text "<TARGET>"
	line "can't escape now!"
	prompt
	
_StartedNightmareText:
	text "<TARGET>"
	line "started to have a"
	cont "NIGHTMARE!"
	prompt
	
_WasDefrostedTextBattle:
	text "<USER>"
	line "was defrosted!"
	prompt
	
_PutACurseText:
	text "<USER>"
	line "cut its own HP and"

	para "put a CURSE on"
	line "<TARGET>!"
	prompt
	
_ProtectedItselfText:
	text "<USER>"
	line "PROTECTED itself!"
	prompt
	
_SpikesText:
	text "SPIKES scattered"
	line "all around"
	cont "<TARGET>!"
	prompt
	
_IdentifiedText:
	text "<USER>"
	line "identified"
	cont "<TARGET>!"
	prompt
	
_StartPerishText:
	text "Both #MON will"
	line "faint in 3 turns!"
	prompt
	
_SandstormBrewedText:
	text "A SANDSTORM"
	line "brewed!"
	prompt
	
_BracedItselfText:
	text "<USER>"
	line "braced itself!"
	prompt
	
_FellInLoveText:
	text "<TARGET>"
	line "fell in love!"
	prompt
	
_CoveredByVeilText:
	text "<USER>'s"
	line "covered by a veil!"
	prompt
	
_SafeguardProtectText:
	text "<TARGET>"
	line "is protected by"
	cont "SAFEGUARD!"
	prompt
	
_MagnitudeText:
	text "Magnitude @"
	deciram wTextDecimalByte, 1, 1
	text "!"
	prompt
	
_ReleasedByText:
	text "<USER>"
	line "was released by"
	cont "<TARGET>!"
	prompt
	
_DownpourText:
	text "A downpour"
	line "started!"
	prompt

_SunGotBrightText:
	text "The sunlight got"
	line "bright!"
	prompt
	
_BattleText_UsersStringBuffer1Activated:
	text "<USER>'s"
	line "@"
	text_from_ram wStringBuffer1
	text_start
	cont "activated!"
	prompt
	
_EnemyWithdrewText::
	text "<ENEMY>"
	line "withdrew"
	cont "@"
	text_from_ram wEnemyMonNickname
	text "!"
	prompt

_EnemyUsedOnText::
	text "<ENEMY>"
	line "used @"
	text_from_ram wStringBuffer1
	text_start
	cont "on @"
	text_from_ram wEnemyMonNickname
	text "!"
	prompt