INCLUDE "constants.asm"

SECTION "_new/text/item_effects.asm", ROMX

_BallBrokeFreeText::
	text "Oh no! The #MON"
	line "broke free!"
	prompt

_BallAppearedCaughtText::
	text "Aww! It appeared"
	line "to be caught!"
	prompt

_BallAlmostHadItText::
	text "Aargh!"
	line "Almost had it!"
	prompt

_BallSoCloseText::
	text "Shoot! It was so"
	line "close too!"
	prompt

Text_BallCaught::
	text "Gotcha! @"
	text_from_ram wEnemyMonNickname
	text_start
	line "was caught!@"
	sound_caught_mon
	text_end
	
_BallSentToPCText::
	text_from_ram wBoxMonNicknames
	text " was"
	line "sent to BILL's PC."
	prompt
	
_BallSentToSomeonePCText::
	text_from_ram wBoxMonNicknames
	text " was"
	line "sent to someone's"
	cont "PC!"
	prompt

_NewDexDataText::
	text_from_ram wEnemyMonNickname
	text "'s data"
	line "was newly added to"
	cont "the #DEX.@"
	sound_slot_machine_start
	text_waitbutton
	text_end

_AskGiveNicknameText::
	text "Give a nickname to"
	line "@"
	text_from_ram wStringBuffer1
	text "?"
	done
	
_ItemStatRoseText::
	text_from_ram wStringBuffer1
	text "'s"
	line "@"
	text_from_ram wStringBuffer2
	text " rose."
	prompt
	
_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt
	
_ItemCantUseOnMonText::
	text "That can't be used"
	line "on this #MON."
	done
	
_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	deciram wCoins, 2, 4
	text " "
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	text_from_ram wStringBuffer2
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	text_from_ram wStringBuffer2
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_BootedUpTMText::
	text "Booted up a TM!"
	prompt

_BootedUpHMText::
	text "Booted up an HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	text_from_ram wStringBuffer2
	text "!"

	para "Teach @"
	text_from_ram wStringBuffer2
	text_start
	line "to a #MON?"
	done

_MonCannotLearnMachineMoveText::
	text_from_ram wStringBuffer1
	text " is not"
	line "compatible with"
	cont "@"
	text_from_ram wStringBuffer2
	text "."

	para "It can't learn"
	line "@"
	text_from_ram wStringBuffer2
	text "."
	prompt
	
_ItemUseNotTimeText::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	text_from_ram wStringBuffer1
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #MON BOX"
	line "is full! Can't"
	cont "use that item!"
	prompt

_ItemCantGetOnText::
	text "Can't get on your"
	line "@"
	text_from_ram wStringBuffer1
	text " now."
	prompt

_ItemUsedText::
	text "<PLAYER> used the"
	line "@"
	text_from_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> got on the@"
	text_low
	text_from_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> got off@"
	text_low
	text "the @"
	text_from_ram wStringBuffer2
	text "."
	prompt

_LearnedMoveText::
	text_from_ram wMonOrItemNameBuffer
	text " learned"
	line "@"
	text_from_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_waitbutton
	text_end

_MoveAskForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_StopLearningMoveText::
	text "Stop learning"
	line "@"
	text_from_ram wStringBuffer2
	text "?"
	done

_DidNotLearnMoveText::
	text_from_ram wMonOrItemNameBuffer
	text_start
	line "did not learn"
	cont "@"
	text_from_ram wStringBuffer2
	text "."
	prompt

_AskForgetMoveText::
	text_from_ram wMonOrItemNameBuffer
	text " is"
	line "trying to learn"
	cont "@"
	text_from_ram wStringBuffer2
	text "."

	para "But @"
	text_from_ram wMonOrItemNameBuffer
	text_start
	line "can't learn more"
	cont "than four moves."

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_from_ram wStringBuffer2
	text "?"
	done

Text_MoveForgetCount::
	text "1, 2 and…@"
	text_exit
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text " Poof!@"
	text_exit
	text_start

	para "@"
	text_from_ram wMonOrItemNameBuffer
	text " forgot"
	line "@"
	text_from_ram wStringBuffer1
	text "."

	para "And…"
	prompt

_MoveCantForgetHMText::
	text "HM moves can't be"
	line "forgotten now."
	prompt
	
_DoYouWantToNicknameText::
	text "Do you want to"
	line "give a nickname"
	cont "to @"
	text_from_ram wStringBuffer1
	text "?"
	done
	
_ItemUseBallText07::
	text_from_ram wStringBuffer1
	text " was"
	line "transferred to"
	cont "BILL's PC!"
	prompt

_ItemUseBallText08::
	text_from_ram wStringBuffer1
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #DEX data"
	line "will be added for"
	cont "@"
	text_from_ram wStringBuffer1
	text "!@"
	text_end

_ItemUseBallText05::
	text "All right!"
	line "@"
	text_from_ram wStringBuffer1
	text " was"
	cont "caught!@"
	text_end
