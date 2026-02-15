INCLUDE "constants.asm"

SECTION "_new/text/breeder.asm", ROMX

_BreederIntroText:
	text "I'm a BREEDER."
	line "What do you want?"
	done

_BreederDepositedText:
	text "Deposited!"
	done

_BreederAlreadyHasTwoPokemonText:
	text "I already care for"
	line "two #MON."
	done

_BreederCheckOnPokemonText:
	text "Would you like to"
	line "check on them?"
	done

_BreederDoesntHavePokemonText:
	text "I don't have a"
	line "single #MON."
	done

_BreederWithdrawnText:
	text "Withdrawn!"
	done

_BreederBoxAndPartyFullText:
	text "BILL'S <PC> is"
	line "full of #MON."
	done

_BreederLetsMakeBabiesText:
	text "Let's make babies!"
	done

_BreederSeemToGetAlongText:
	text "The two seem to"
	line "get along."
	done

_BreederDontSeemToGetAlongText:
	text "The don't two seem"
	line "to get along."
	done

_BreederGendersDontMatchText:
	text "Their genders"
	line "don't match."
	done

_BreederNoEggYetText:
	text "Unfortunately, no"
	line "egg was laid yet."
	done

_BreederEggLaidText:
	text "An egg has been"
	line "laid! You want it?"
	done
