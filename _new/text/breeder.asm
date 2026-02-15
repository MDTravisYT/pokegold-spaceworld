INCLUDE "constants.asm"

SECTION "_new/text/breeder.asm", ROMX

_BreederIntroText:
	text "I'm a BREEDER."
	line "What do you want?"
	done

_BreederDepositedText:
	text "Deposited!"
	prompt

_BreederAlreadyHasTwoPokemonText:
	text "I already care for"
	line "two #MON."
	prompt

_BreederCheckOnPokemonText:
	text "Would you like to"
	line "check on them?"
	done

_BreederDoesntHavePokemonText:
	text "I don't have a"
	line "single #MON."
	prompt

_BreederWithdrawnText:
	text "Withdrawn!"
	prompt

_BreederBoxAndPartyFullText:
	text "BILL'S <PC> is"
	line "full of #MON."
	prompt

_BreederLetsMakeBabiesText:
	text "Let's make babies!"
	prompt

_BreederSeemToGetAlongText:
	text "The two seem to"
	line "get along."
	prompt

_BreederDontSeemToGetAlongText:
	text "The don't two seem"
	line "to get along."
	prompt

_BreederGendersDontMatchText:
	text "Their genders"
	line "don't match."
	prompt

_BreederNoEggYetText:
	text "Unfortunately, no"
	line "egg was laid yet."
	prompt

_BreederEggLaidText:
	text "An egg has been"
	line "laid! You want it?"
	done
