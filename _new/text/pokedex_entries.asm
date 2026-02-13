INCLUDE "constants.asm"

; Entry_ENG format:
;	db category
;	db height (meters * 10)
;	dw weight (kilograms * 10)
;	db Entry_ENG text

SECTION "_new/text/pokedex_entries.asm", ROMX

PokedexEntryPointers1_ENG::
	dw BulbasaurDexEntry_ENG
	dw IvysaurDexEntry_ENG
	dw VenusaurDexEntry_ENG
	dw CharmanderDexEntry_ENG
	dw CharmeleonDexEntry_ENG
	dw CharizardDexEntry_ENG
	dw SquirtleDexEntry_ENG
	dw WartortleDexEntry_ENG
	dw BlastoiseDexEntry_ENG
	dw CaterpieDexEntry_ENG
	dw MetapodDexEntry_ENG
	dw ButterfreeDexEntry_ENG
	dw WeedleDexEntry_ENG
	dw KakunaDexEntry_ENG
	dw BeedrillDexEntry_ENG
	dw PidgeyDexEntry_ENG
	dw PidgeottoDexEntry_ENG
	dw PidgeotDexEntry_ENG
	dw RattataDexEntry_ENG
	dw RaticateDexEntry_ENG
	dw SpearowDexEntry_ENG
	dw FearowDexEntry_ENG
	dw EkansDexEntry_ENG
	dw ArbokDexEntry_ENG
	dw PikachuDexEntry_ENG
	dw RaichuDexEntry_ENG
	dw SandshrewDexEntry_ENG
	dw SandslashDexEntry_ENG
	dw NidoranFDexEntry_ENG
	dw NidorinaDexEntry_ENG
	dw NidoqueenDexEntry_ENG
	dw NidoranMDexEntry_ENG
	dw NidorinoDexEntry_ENG
	dw NidokingDexEntry_ENG
	dw ClefairyDexEntry_ENG
	dw ClefableDexEntry_ENG
	dw VulpixDexEntry_ENG
	dw NinetalesDexEntry_ENG
	dw JigglypuffDexEntry_ENG
	dw WigglytuffDexEntry_ENG
	dw ZubatDexEntry_ENG
	dw GolbatDexEntry_ENG
	dw OddishDexEntry_ENG
	dw GloomDexEntry_ENG
	dw VileplumeDexEntry_ENG
	dw ParasDexEntry_ENG
	dw ParasectDexEntry_ENG
	dw VenonatDexEntry_ENG
	dw VenomothDexEntry_ENG
	dw DiglettDexEntry_ENG
	dw DugtrioDexEntry_ENG
	dw MeowthDexEntry_ENG
	dw PersianDexEntry_ENG
	dw PsyduckDexEntry_ENG
	dw GolduckDexEntry_ENG
	dw MankeyDexEntry_ENG
	dw PrimeapeDexEntry_ENG
	dw GrowlitheDexEntry_ENG
	dw ArcanineDexEntry_ENG
	dw PoliwagDexEntry_ENG
	dw PoliwhirlDexEntry_ENG
	dw PoliwrathDexEntry_ENG
	dw AbraDexEntry_ENG
	dw KadabraDexEntry_ENG
	dw AlakazamDexEntry_ENG
	dw MachopDexEntry_ENG
	dw MachokeDexEntry_ENG
	dw MachampDexEntry_ENG
	dw BellsproutDexEntry_ENG
	dw WeepinbellDexEntry_ENG
	dw VictreebelDexEntry_ENG
	dw TentacoolDexEntry_ENG
	dw TentacruelDexEntry_ENG
	dw GeodudeDexEntry_ENG
	dw GravelerDexEntry_ENG
	dw GolemDexEntry_ENG
	dw PonytaDexEntry_ENG
	dw RapidashDexEntry_ENG
	dw SlowpokeDexEntry_ENG
	dw SlowbroDexEntry_ENG
	dw MagnemiteDexEntry_ENG
	dw MagnetonDexEntry_ENG
	dw FarfetchdDexEntry_ENG
	dw DoduoDexEntry_ENG
	dw DodrioDexEntry_ENG
	dw SeelDexEntry_ENG
	dw DewgongDexEntry_ENG
	dw GrimerDexEntry_ENG
	dw MukDexEntry_ENG
	dw ShellderDexEntry_ENG
	dw CloysterDexEntry_ENG
	dw GastlyDexEntry_ENG
	dw HaunterDexEntry_ENG
	dw GengarDexEntry_ENG
	dw OnixDexEntry_ENG
	dw DrowzeeDexEntry_ENG
	dw HypnoDexEntry_ENG
	dw KrabbyDexEntry_ENG
	dw KinglerDexEntry_ENG

BulbasaurDexEntry_ENG:
	db   "Some kind of seed"
	next "was planted on its"
	next "back at birth."
	
	page "The seed sprouts"
	next "as its body grows."
	dex

IvysaurDexEntry_ENG:
	db   "It has a flower"
	next "bud on its back."
	next "It gradually grows"
	
	page "as it absorbs"
	next "neutrients."
	dex

VenusaurDexEntry_ENG:
	db   "To take good care"
	next "of its large"
	next "flower, it moves"
	
	page "towards the"
	next "sunlight as if"
	next "drawn to it."
	dex
	
CharmanderDexEntry_ENG:
	db   "Obviously prefers"
	next "hot places. When"
	next "excited, the flame"
	
	page "on its tail grows"
	next "hotter."
	dex

CharmeleonDexEntry_ENG:
	db   "When it swings its"
	next "burning tail, it"
	next "elevates the"
	
	page "temerature to"
	next "unbearably high"
	next "levels."
	dex

CharizardDexEntry_ENG:
	db   "Spits fire so"
	next "intense it can"
	next "melt boulders."
	
	page "Known to cause"
	next "forest fires"
	next "unintentionally."
	dex

SquirtleDexEntry_ENG:
	db   "After birth, its"
	next "back swells and"
	next "hardens into a"
	
	page "shell. Powerfully"
	next "sprays foam from"
	next "its mouth."
	dex

WartortleDexEntry_ENG:
	db   "Often hides in"
	next "water to stalk"
	next "unwary prey. For"
	
	page "swimming fast, it"
	next "moves its ears to"
	next "maintain balance."
	dex

BlastoiseDexEntry_ENG:
	db   "It has a hard and"
	next "heavy shell. It"
	next "crushes opponents,"
	
	page "making them lose"
	next "their will to"
	next "fight."
	dex

CaterpieDexEntry_ENG:
	db   "It's covered with a" ; 's becomes one tile
	next "green skin. When"
	next "it grows, it sheds"
	
	page "the skin, covers"
	next "with silk, and"
	next "becomes a cocoon."
	dex

MetapodDexEntry_ENG:
	db   "It's encased in a" ; 's becomes one tile
	next "thin shell and the"
	next "body inside is"
	
	page "tender. It can't"
	next "withstand a harsh"
	next "attack."
	dex

ButterfreeDexEntry_ENG:
	db   "The wings are"
	next "protected by rain-"
	next "repellent dust. As"
	
	page "a result, this"
	next "#MON can fly"
	next "even in rain."
	dex

WeedleDexEntry_ENG:
	db   "Often found in"
	next "forests, eating"
	next "leaves. It has a"
	
	page "sharp venomus"
	next "stinger on its"
	next "head."
	dex

KakunaDexEntry_ENG:
	db   "Stays inside its"
	next "shell while"
	next "creating an adult"
	
	page "body to transform"
	next "into. It barely"
	next "moves."
	dex

BeedrillDexEntry_ENG:	;	Simplified "all the while" to "while"
	db   "May appear in a"
	next "swarm. Flies at"
	next "violent speeds,"
	
	page "while stabbing"
	next "its toxic stinger"
	next "on its rear."
	dex

PidgeyDexEntry_ENG:	;	"scatter sand around" changed to "kick up sand".
	db   "A common sight in"
	next "forests and woods."
	next "Even when on"
	
	page "ground level, it"
	next "flaps its wings to"
	next "kick up sand."
	dex

PidgeottoDexEntry_ENG:		;	Ommitted mention of Exeggcute for formatting.
	db   "The claws on its"
	next "feet are well"
	next "developed. It can"
	
	page "carry prey to its"
	next "nest over 60 miles"
	next "away."
	dex

PidgeotDexEntry_ENG:	;	"intimidate" changed to "alarm"
	db   "It spreads its"
	next "gorgeous wings"
	next "widely to"
	
	page "alarm enemies."
	next "It races the skies"
	next "at Mach-2 speed."
	dex

RattataDexEntry_ENG:
	db   "Bites anything"
	next "when it attacks."
	next "Small and very"
	
	page "quick, it is a"
	next "common sight in"
	next "many places."
	dex

RaticateDexEntry_ENG:
	db   "Its rear feet have"
	next "three toes each."
	next "They are webbed,"
	
	page "enabling it to"
	next "swim across"
	next "rivers."
	dex

SpearowDexEntry_ENG:
	db   "Eats bugs in"
	next "grassy areas. It"
	next "has to flap its"
	
	page "short wings at"
	next "high speed to stay"
	next "airborne."
	dex

FearowDexEntry_ENG:
	db   "With its huge and"
	next "magnificent wings,"
	next "it can keep aloft"
	
	page "without ever"
	next "having to land for"
	next "rest."
	dex

EkansDexEntry_ENG:
	db   "It usually hides"
	next "in the grass. Baby"
	next "EKANS have no"
	
	page "poison, so being"
	next "bitten poses no"
	next "threat."
	dex

ArbokDexEntry_ENG:	;	"the pattern" simplified to "it"
	db   "The pattern on its"
	next "belly appears to"
	next "be a frightening"
	
	page "face. Weak foes"
	next "will flee just at"
	next "the sight of it."
	dex

PikachuDexEntry_ENG:
	db   "It has small"
	next "electric sacs on"
	next "its cheeks. If"	;	removed "both of its"
	
	page "threatened, they"	;	slightly reworded from "If threatened, it looses electric charges from the sacs."
	next "lose their"
	next "electric charges."
	dex

RaichuDexEntry_ENG:		;	simplified second sentence
	db   "Its electric"
	next "charge reaches up"
	next "to 100,000 volts."
	
	page "Touching its tail"
	next "can cause even an"
	next "elephant to faint."
	dex

SandshrewDexEntry_ENG:
	db   "Burrows deep"
	next "underground in"
	next "arid locations far"
	
	page "from water. It"
	next "only emerges to"
	next "hunt for food."
	dex

SandslashDexEntry_ENG:
	db   "Curls up deep into"
	next "a spiny ball when"
	next "threatened. It can"
	
	page "roll while curled"
	next "up to attack or"
	next "escape."
	dex

NidoranFDexEntry_ENG:	;	ommitted the part about the female's horn being smaller for space
	db   "Though small, it"
	next "must be treated"
	next "with care"
	
	page "because of its"
	next "powerfully toxic"
	next "barbs."
	dex

NidorinaDexEntry_ENG:
	db   "The female's horn"
	next "develops slowly."
	next "Prefers physical"
	
	page "attacks such as"
	next "clawing and"
	next "biting."
	dex

NidoqueenDexEntry_ENG:	;	reworded slightly
	db   "Needle-like scales"
	next "tightly grow on"
	next "its back. If it"
	
	page "becomes excited,"
	next "the needles"
	next "bristle outwards."
	dex

NidoranMDexEntry_ENG:
	db   "Stiffens its long"
	next "ears to sense"
	next "danger. The larger"
	
	page "its horns, the"
	next "more powerful its"
	next "secreted venom."
	dex

NidorinoDexEntry_ENG:
	db   "An aggressive"
	next "#MON that is"
	next "quick to attack."
	
	page "The horn on its"
	next "head secretes a"
	next "powerful venom."
	dex

NidokingDexEntry_ENG:	;	reworded slightly
	db   "Known by its hard"
	next "diamond-like hide"
	next "and extended horn."
	
	page "Be careful with"
	next "the horn as it"
	next "contains venom."
	dex

ClefairyDexEntry_ENG:
	db   "Its magical and"
	next "cute appeal has"
	next "many admirers. It"
	
	page "is rare and found"
	next "only in certain"
	next "areas."
	dex

ClefableDexEntry_ENG:
	db   "It has an acute"
	next "sense of hearing."
	next "It can easily hear"
	
	page "a pin being"
	next "dropped nearly"
	next "1,000 yards away."
	dex

VulpixDexEntry_ENG:
	db   "While young, it"
	next "has six gorgeous"
	next "tails. When it"
	
	page "grows, several"
	next "new tails are"
	next "sprouted."
	dex

NinetalesDexEntry_ENG:
	db   "It has nine long"
	next "tails and fur that"
	next "gleams gold. It is"
	
	page "said to live for"
	next "1,000 years."
	dex

JigglypuffDexEntry_ENG:
	db   "When its huge eyes"
	next "light up, it sings"
	next "a mysteriously"
	
	page "soothing melody"
	next "that lulls its"
	next "enemies to sleep."
	dex

WigglytuffDexEntry_ENG:	;	reworded slightly
	db   "Its fine, detailed"
	next "fur is supple"
	next "and feels good to"
	
	page "the touch. Said to"
	next "sell easily when"
	next "turned into pelt."
	dex

ZubatDexEntry_ENG:
	db   "Forms colonies in"
	next "perpetually dark"
	next "places. Uses"
	
	page "ultrasonic waves"
	next "to identify and"
	next "approach targets."
	dex

GolbatDexEntry_ENG:
	db   "It clamps down on"
	next "its prey with"
	next "needle-sharp fangs"
	
	page "and drains over 10"
	next "ounces of blood in"
	next "one gulp."
	dex

OddishDexEntry_ENG:
	db   "During the day, it"
	next "keeps its face"
	next "buried in the"
	
	page "ground. At night,"
	next "it wanders around"
	next "sowing its seeds."
	dex

GloomDexEntry_ENG:	;	distance > radius
	db   "It pistils exude"
	next "an incredibly foul"
	next "odor. The horrid"
	
	page "stench can cause"
	next "fainting at a"
	next "radius of 1.25mi."
	dex

VileplumeDexEntry_ENG:	;	fiendishly > viciously
	db   "Its petals are the"
	next "largest in the"
	next "world.It viciously"
	
	page "scatters allergy-"
	next "causing pollen"
	next "from its petals."
	dex

ParasDexEntry_ENG:
	db   "Growing out of the"
	next "bug's back are"
	next "mushrooms called"
	
	page "tochukaso. The"
	next "mushrooms grow"
	next "with the bug host."
	dex

ParasectDexEntry_ENG:
	db   "It scatters toxic"
	next "spores from the"
	next "mushrooms cap. In"
	
	page "China, the spores"
	next "are used as herbal"
	next "medicine."
	dex

VenonatDexEntry_ENG:
	db   "Lives in the tall"
	next "trees where it"
	next "seems to eat other"
	
	page "insects and such."
	next "It is attracted by"
	next "light at night."
	dex

VenomothDexEntry_ENG:
	db   "The wings are"
	next "covered with dust-"
	next "like scales. Every"
	
	page "time it flaps its"
	next "wings, it looses"
	next "highly toxic dust."
	dex

DiglettDexEntry_ENG:
	db   "Lives about one"
	next "yard underground"
	next "where it feeds on"
	
	page "plant roots. It"
	next "sometimes appears"
	next "above ground."
	dex

DugtrioDexEntry_ENG:
	db   "In battle, it digs"
	next "through the ground"
	next "and strikes the"
	
	page "unsuspecting foe"
	next "from an unexpected"
	next "direction."
	dex

MeowthDexEntry_ENG:
	db   "Loves shiny "
	next "things. Frequently"
	next "picks up money it"
	
	page "finds scattered on"
	next "the floor."
	dex

PersianDexEntry_ENG:
	db   "Has a vicious"	;	simplified
	next "temperament.Beware"
	next "if it raises its"
	
	page "tail straight up."
	next "It's a sign it'll"
	next "pounce and bite."
	dex

PsyduckDexEntry_ENG:	;	simplified
	db   "It is constantly"
	next "wracked by a"
	next "headache. When it"
	
	page "turns intense,"
	next "it begins using"
	next "mysterious powers."
	dex

GolduckDexEntry_ENG:	;	removed "etc"
	db   "The forelegs are"
	next "webbed, helping to"
	next "make it an adept"
	
	page "swimmer. It can be"
	next "seen swimming"
	next "elegantly in lakes"
	dex

MankeyDexEntry_ENG:	;	reworded slightly
	db   "Light and agile"
	next "on its feet, and"
	next "ferocious in"
	
	page "temperament."
	next "Flies into a"
	next "frenzy when angry."
	dex

PrimeapeDexEntry_ENG:
	db   "Always furious and"
	next "tenacious to boot."
	next "It will not"
	
	page "abandon chasing"
	next "its quarry until"
	next "it is caught."
	dex

GrowlitheDexEntry_ENG:
	db   "Has a friendly"
	next "personality, but"
	next "it attacks those"
	
	page "who carelessly"
	next "approach its"
	next "territory."
	dex

ArcanineDexEntry_ENG:
	db   "A #MON that has"
	next "been admired since"
	next "the past for its"
	
	page "beauty. It runs"
	next "agilely as if on"
	next "wings."
	dex

PoliwagDexEntry_ENG:	;	removed "pattern"
	db   "Has a thin smooth"
	next "black skin. The"
	next "inside of its"
	
	page "belly can be seen"
	next "through the skin"
	next "as a spiral."
	dex

PoliwhirlDexEntry_ENG:
	db   "Capable of living"
	next "in or out of"
	next "water. When out of"
	
	page "water, it sweats"
	next "to keep its body"
	next "slimy."
	dex

PoliwrathDexEntry_ENG:	;	"and more" > "etc"
	db   "An adept swimmer,"
	next "it knows the front"
	next "crawl, butterfly,"
	
	page "etc. It is faster"
	next "than the best"
	next "human swimmers."
	dex

AbraDexEntry_ENG:
	db   "It sleeps for 18"
	next "hours a day. It"
	next "uses a variety of"
	
	page "extrasensory"
	next "powers even while"
	next "asleep."
	dex

KadabraDexEntry_ENG:
	db   "It emits special"
	next "alpha waves from"
	next "its body that"
	
	page "induce headaches"
	next "just by being"
	next "close by."
	dex

AlakazamDexEntry_ENG:
	db   "Its brain can"
	next "outperform a"
	next "supercomputer. Its"
	
	page "intelligence"
	next "quotient is said"
	next "to be 5,000."
	dex

MachopDexEntry_ENG:		;	composed > made (is that good?)
	db   "Its whole body is"
	next "made of muscles."
	next "Even though it"
	
	page "looks like a human"
	next "child, it can hurl"
	next "100 grown-ups."
	dex

MachokeDexEntry_ENG:	;	formidable > terrific
	db   "Its terrific body"
	next "never gets tired."
	next "Helps people by"
	
	page "doing work such as"
	next "moving extremely"
	next "heavy goods."
	dex

MachampDexEntry_ENG:
	db   "Its four ruggedly"
	next "developed arms can"
	next "launch a flurry of"
	
	page "1,000 punches in"
	next "just two seconds."
	dex

BellsproutDexEntry_ENG:	;	"the bud" > "that", "rumored" > "said"
	db   "Its bud looks like"
	next "a human face."
	next "Because of that,"
	
	page "it's said to be a"
	next "type of legendary"
	next "mandrake plant."
	dex

WeepinbellDexEntry_ENG:
	db   "The leafy parts"
	next "act as cutters for"
	next "slashing foes. It"
	
	page "spits a fluid that"
	next "dissolves"
	next "everything."
	dex

VictreebelDexEntry_ENG:
	db   "A ferocious plant"
	next "#MON often"
	next "seeps in southern"
	
	page "lands. Can melt"
	next "anything with its"
	next "dissolving fluid."
	dex

TentacoolDexEntry_ENG:
	db   "Its eyes are clear"
	next "just like crystal."
	next "From them, it"
	
	page "shoots mysterious"
	next "beams of light."
	dex

TentacruelDexEntry_ENG:	;	simplified
	db   "Has 80 tentacles"
	next "that move about"
	next "freely. Can sting,"
	
	page "causing poisoning"
	next "and sharp,"
	next "stabbing pain."
	dex

GeodudeDexEntry_ENG:
	db   "Found in fields"
	next "and mountains."
	next "Mistaking them for"
	
	page "boulders, people"
	next "often step or trip"
	next "on them."
	dex

GravelerDexEntry_ENG:
	db   "Moves by rolling"
	next "down from high"
	next "mountain roads."
	
	page "When it does, it"
	next "squashes any"
	next "obstacles."
	dex

GolemDexEntry_ENG:
	db   "Its boulder-like"
	next "body is extremely"
	next "hard. It can"
	
	page "easily withstand"
	next "dynamite blasts"
	next "without damage."
	dex

PonytaDexEntry_ENG:
	db   "Its body is light,"
	next "and its legs are"
	next "incredibly"
	
	page "powerful. It can"
	next "clear Tokyo Tower"
	next "in one leap."
	dex

RapidashDexEntry_ENG:
	db   "It can gallop at a"
	next "top speed of 150"
	next "miles per hour."
	
	page "Can race as fast"
	next "as a bullet train"
	next "while ablaze."
	dex

SlowpokeDexEntry_ENG:
	db   "Incredibly slow"
	next "and dopey. It"
	next "takes 5 seconds"
	
	page "for it to feel"
	next "pain when under"
	next "attack."
	dex

SlowbroDexEntry_ENG:	;	simplified
	db   "When SLOWPOKE went"
	next "hunting in the sea"
	next "its tail was bit"
	
	page "by a SHELLDER.That"
	next "made it evolve"
	next "into SLOWBRO."
	dex

MagnemiteDexEntry_ENG:	;	reworded slightly, "and so on" > "etc", "discharges" > "fires"
	db   "It moves while"
	next "constantly"
	next "hovering. It"
	
	page "fires THUNDER WAVE"
	next "etc, from units"
	next "on its sides."
	dex

MagnetonDexEntry_ENG:	;	"discharges" > "fires"
	db   "A linked cluster"
	next "of several"
	next "MAGNEMITE. It"
	
	page "fires powerful"
	next "magnetic waves at"
	next "high voltage."
	dex

FarfetchdDexEntry_ENG:
	db   "It always walks"
	next "about with a plant"
	next "stalk clamped in"
	
	page "its beak. The"
	next "stalk is used for"
	next "building its nest."
	dex

DoduoDexEntry_ENG:
	db   "A bird that makes"
	next "up for its poor"
	next "flying with its"
	
	page "fast foot speed."
	next "Leaves giant"
	next "footprints."
	dex

DodrioDexEntry_ENG:
	db   "Uses its three"
	next "brains to execute"
	next "complex plans."
	
	page "While two heads"
	next "sleep, one head"
	next "stays awake."
	dex

SeelDexEntry_ENG:	;	simplified "Farenheit" to "F".
	db   "Covered in light"
	next "blue fur, its hide"
	next "is thick and "
	
	page "tough. It's active"
	next "in bitter cold of"
	next "-40 degrees F."
	dex

DewgongDexEntry_ENG:
	db   "Its body is"
	next "covered with a"
	next "pure white fur."
	
	page "The colder the"
	next "weather, the more"
	next "active it becomes."
	dex

GrimerDexEntry_ENG:
	db   "Sludge exposed to"
	next "X-rays from the"
	next "moon transformed"
	
	page "into GRIMER. It"
	next "loves feeding on"
	next "filthy things."
	dex

MukDexEntry_ENG:	;	undetectable > invisible, ground > land
	db   "Usually invisible"
	next "because it blends"
	next "in with the land."
	
	page "Touching it can"
	next "cause terrible"
	next "poisoning."
	dex

ShellderDexEntry_ENG:
	db   "It is encased in a"
	next "shell that is"
	next "harder than"
	
	page "diamond. Inside,"
	next "however, it is"
	next "very tender."
	dex

CloysterDexEntry_ENG:	;	simplified
	db   "Its shell is"
	next "extremely hard. It"
	next "can't be shattered,"
	
	page "even with a bomb."
	next "The shell opens"
	next "only when battling"
	dex

GastlyDexEntry_ENG:		;	simplified
	db   "A being that"
	next "exists as a thin"
	next "gas. It can topple"
	
	page "an elephant by"
	next "enveloping the"
	next "prey in 2 seconds."
	dex

HaunterDexEntry_ENG:
	db   "If you get the"
	next "feeling of being"
	next "watched in"
	
	page "darkness when"
	next "nobody is around,"
	next "HAUNTER is there."
	dex

GengarDexEntry_ENG:
	db   "It's said to"
	next "emerge from"
	next "darkness to steal"
	
	page "the lives of of"
	next "those who become"
	next "lost in mountains."
	dex

OnixDexEntry_ENG:
	db   "As it grows, the"
	next "stone portions of"
	next "its body harden to"
	
	page "become similar to"
	next "a diamond, but"
	next "colored black."
	dex

DrowzeeDexEntry_ENG:	;	simplified
	db   "A descendent of"
	next "the legendary"
	next "animal baku, which"
	
	page "is said to eat"
	next "dreams. Skilled"
	next "at hypnotism."
	dex

HypnoDexEntry_ENG:
	db   "Carries a pendulum"
	next "-like device. "
	next "There once was an"
	
	page "incident in which"
	next "it took a child"
	next "it hypnotized."
	dex

KrabbyDexEntry_ENG:
	db   "Its pincers are"
	next "not only powerful"
	next "weapons, they are"
	
	page "used for balance"
	next "when walking"
	next "sideways."
	dex

KinglerDexEntry_ENG:
	db   "The large pincer"
	next "has 10000 hp of"
	next "crushing power."
	
	page "However, its huge"
	next "size makes it"
	next "unwieldy to use."
	dex

PokedexEntryPointers2_ENG::
	dw VoltorbDexEntry_ENG
	dw ElectrodeDexEntry_ENG
	dw ExeggcuteDexEntry_ENG
	dw ExeggutorDexEntry_ENG
	dw CuboneDexEntry_ENG
	dw MarowakDexEntry_ENG
	dw HitmonleeDexEntry_ENG
	dw HitmonchanDexEntry_ENG
	dw LickitungDexEntry_ENG
	dw KoffingDexEntry_ENG
	dw WeezingDexEntry_ENG
	dw RhyhornDexEntry_ENG
	dw RhydonDexEntry_ENG
	dw ChanseyDexEntry_ENG
	dw TangelaDexEntry_ENG
	dw KangaskhanDexEntry_ENG
	dw HorseaDexEntry_ENG
	dw SeadraDexEntry_ENG
	dw GoldeenDexEntry_ENG
	dw SeakingDexEntry_ENG
	dw StaryuDexEntry_ENG
	dw StarmieDexEntry_ENG
	dw MrMimeDexEntry_ENG
	dw ScytherDexEntry_ENG
	dw JynxDexEntry_ENG
	dw ElectabuzzDexEntry_ENG
	dw MagmarDexEntry_ENG
	dw PinsirDexEntry_ENG
	dw TaurosDexEntry_ENG
	dw MagikarpDexEntry_ENG
	dw GyaradosDexEntry_ENG
	dw LaprasDexEntry_ENG
	dw DittoDexEntry_ENG
	dw EeveeDexEntry_ENG
	dw VaporeonDexEntry_ENG
	dw JolteonDexEntry_ENG
	dw FlareonDexEntry_ENG
	dw PorygonDexEntry_ENG
	dw OmanyteDexEntry_ENG
	dw OmastarDexEntry_ENG
	dw KabutoDexEntry_ENG
	dw KabutopsDexEntry_ENG
	dw AerodactylDexEntry_ENG
	dw SnorlaxDexEntry_ENG
	dw ArticunoDexEntry_ENG
	dw ZapdosDexEntry_ENG
	dw MoltresDexEntry_ENG
	dw DratiniDexEntry_ENG
	dw DragonairDexEntry_ENG
	dw DragoniteDexEntry_ENG
	dw MewtwoDexEntry_ENG
	dw MewDexEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG
	dw NihonMonEntry_ENG

VoltorbDexEntry_ENG:
	db   "Usually found in"
	next "power plants."
	next "Easily mistaken"
	
	page "for a # BALL,"
	next "they have zapped"
	next "manypeople."
	dex

ElectrodeDexEntry_ENG:
	db   "It stores electric"
	next "energy under very"
	next "high pressure. It"
	
	page "often explodes with"
	next "little or no"
	next "provocation."
	dex

ExeggcuteDexEntry_ENG:
	db   "They look like"
	next "eggs, but in"
	next "reality they're a"
	
	page "life-form more"
	next "similar to plant"
	next "seeds."
	dex

ExeggutorDexEntry_ENG:
	db   "It's called the"
	next "''Walking Tropical"
	next "Rainforest''. Each"
	
	page "of the nuts has a"
	next "will of its own."
	dex

CuboneDexEntry_ENG:	;	lonesome > lonely
	db   "It wears the skull"
	next "of its dead mother"
	next "on its head. When"
	
	page "it becomes lonely,"
	next "it is said to cry"
	next "very loudly."
	dex

MarowakDexEntry_ENG:
	db   "It is small and"
	next "was originally"
	next "very weak. Its"
	
	page "temperament turned"
	next "ferocious when it"
	next "began using bones."
	dex

HitmonleeDexEntry_ENG:	;	opponents > foes
	db   "Its legs freely"
	next "contract and"
	next "stretch. It can"
	
	page "easily kick foes"
	next "up even when"
	next "they're far away."
	dex

HitmonchanDexEntry_ENG:	;	simplified
	db   "The spirit of a pro"
	next "boxer has infused"
	next "this #MON. Throws"
	
	page "punches that are"
	next "faster than a "
	next "bullet train."
	dex

LickitungDexEntry_ENG:	;	"It can be moved" > "Moves"
	db   "It can extend its"
	next "tounge to twice"
	next "the length of its"
	
	page "body. Moves like"
	next "an arm for grabb-"
	next "-ing and attacking"
	dex

KoffingDexEntry_ENG:	;	"nearby" > "near"
	db   "Its thin, balloon-"
	next "like body is"
	next "inflated by"
	
	page "horribly toxic"
	next "gases. It reeks"
	next "just by being near"
	dex

WeezingDexEntry_ENG:	;	conjoined > merged
	db   "Very rarely, a"
	next "sudden mutation"
	next "can result in two"
	
	page "small KOFFING"
	next "twins becoming "
	next "merged as WEEZING."
	dex

RhyhornDexEntry_ENG:
	db   "Strong, but not"
	next "too bright, this"
	next "#MON may even"
	
	page "shatter a sky-"
	next "scraper with its"
	next "charging TACKLEs."
	dex

RhydonDexEntry_ENG:
	db   "Protected by an"
	next "armor-like hide,"
	next "it is capable of"
	
	page "living in molten"
	next "lava of 3,600"
	next "degrees."
	dex

ChanseyDexEntry_ENG:
	db   "Its population is"
	next "small. Said to"
	next "bring good luck to"
	
	page "those who capture"
	next "it."
	dex

TangelaDexEntry_ENG:
	db   "Blue plant vines"
	next "cloak the #MON's"
	next "identity in a"
	
	page "tangled mass. It"
	next "entangles anything"
	next "that gets close."
	dex

KangaskhanDexEntry_ENG:
	db   "The infant rarely"
	next "ventures out of"
	next "its mother's"
	
	page "protective pouch"
	next "until it is at"
	next "least 3 years old."
	dex

HorseaDexEntry_ENG:
	db   "It balances itself"
	next "using its tail"
	next "wound up like a"
	
	page "coil. It sprays"
	next "ink from its"
	next "mouth."
	dex

SeadraDexEntry_ENG:
	db   "Capable of"
	next "swimming backwards"
	next "by rapidly"
	
	page "flapping its wing-"
	next "like pectoral fins"
	next "and stout tail."
	dex

GoldeenDexEntry_ENG:	;	simplified
	db   "Its dorsal and"
	next "pectoral fins are"
	next "strongly developed"
	
	page "like muscles. Can"
	next "swim at a speed"
	next "of five knots."
	dex

SeakingDexEntry_ENG:	;	simplified
	db   "Has a horn on its"
	next "head that is sharp"
	next "like a drill. It"
	
	page "uses it to bore a"
	next "hole in a boulder"
	next "to make a nest."
	dex

StaryuDexEntry_ENG:
	db   "It appears in"
	next "large numbers by"
	next "seahorses. At"
	
	page "night, its central"
	next "core flashes with"
	next "a red light."
	dex

StarmieDexEntry_ENG:
	db   "This #MON has a"
	next "geometric body."
	next "Because of its"
	
	page "body, the locals"
	next "suspect that it is"
	next "an alien creature."
	dex

MrMimeDexEntry_ENG:
	db   "It is adept at"
	next "conning people. It"
	next "is said to be able"
	
	page "to create walls"
	next "out of thin air by"
	next "miming."
	dex

ScytherDexEntry_ENG:	;	simplified
	db   "Slashes prey using"
	next "its sharp sickles,"
	next "killing them. It's"
	
	page "observed that it"
	next "rarely spread its"
	next "wings to fly."
	dex

JynxDexEntry_ENG:	;	simplified
	db   "It seductively"
	next "wiggles its hips"
	next "as it walks. Can"
	
	page "cause people to"
	next "dance in unison"
	next "with it."
	dex

ElectabuzzDexEntry_ENG:	;	reworded slightly
	db   "Loves to feed on"
	next "strong electri-"
	next "-city. Appears"
	
	page "around large power"
	next "plants, and so on."
	dex

MagmarDexEntry_ENG:
	db   "Found near the"
	next "mouth of a volcano."
	next "This fire-"
	
	page "breather's body"
	next "temperature nearly"
	next "2,200 degrees F."
	dex

PinsirDexEntry_ENG:
	db   "It's said that when"	;	's is one tile
	next "it grips anything"
	next "with its two long"
	
	page "horns, it won't let"	;	't is one time
	next "large power plants"
	next "and so on."
	dex

TaurosDexEntry_ENG:
	db   "When it targets an"
	next "enemy, it charges"
	next "furiously while"
	
	page "whipping its body"
	next "with its long"
	next "tails."
	dex

MagikarpDexEntry_ENG:	;	ommitted "in the world"
	db   "It is virtually"
	next "worthless in terms"
	next "of both power and"
	
	page "speed. It is the"
	next "most weak and"
	next "pathetic #MON."
	dex

GyaradosDexEntry_ENG:	;	removed "totally"
	db   "It's extremely"
	next "aggressive. The"
	next "HYPER BEAM it"
	
	page "shoots from its"
	next "mouth incinerates"
	next "all targets."
	dex

LaprasDexEntry_ENG:
	db   "A #MON that has"
	next "been overhunted"
	next "almost to"
	
	page "extinction. It can"
	next "ferry people"
	next "across the water."
	dex

DittoDexEntry_ENG:
	db   "Capable of copying"
	next "an enemy's genetic"
	next "code to instantly"
	
	page "transform itself"
	next "into a duplicate"
	next "of the enemy."
	dex

EeveeDexEntry_ENG:
	db   "Its genetic code"
	next "is irregular. It"
	next "may mutate if it"
	
	page "is exposed to"
	next "radiation from"
	next "elemnt STONEs."
	dex

VaporeonDexEntry_ENG:
	db   "Lives close to"
	next "water. Its long"
	next "tail is ridged"
	
	page "with a fin which"
	next "is often mistaken"
	next "for a mermaid's."
	dex

JolteonDexEntry_ENG:
	db   "It accumulates"
	next "negative ions in"
	next "the atmosphere to"
	
	page "blast out"
	next "10000-volt"
	next "lignting bolts."
	dex

FlareonDexEntry_ENG:	;	shortened
	db   "Storing thermal"
	next "energy in its body"
	next "its temperature"
	
	page "could soar to over"
	next "1000 degrees, mak-"
	next "-ing it dangerous."
	dex

PorygonDexEntry_ENG:	;	reworded and simplified
	db   "Scientists finally"
	next "succeeded in maki-"
	next "-ng the first art-"
	
	page "-ificial #MON"
	page "using advanced"
	page "technology."
	dex

OmanyteDexEntry_ENG:
	db   "Although long"
	next "extinct, in rare"
	next "cases, it can be"
	
	page "genetically"
	next "resurrected from"
	next "fossils."
	dex

OmastarDexEntry_ENG:
	db   "Once it attacks"
	next "with its sharp"
	next "fangs and"
	
	page "tentacles, it's"
	next "over. It sucks out"
	next "all bodily fluids."
	dex

KabutoDexEntry_ENG:
	db   "This #MON was"
	next "regenerated from"
	next "the fossil of an"
	
	page "ancient creature."
	next "It protects itself"
	next "with a hard shell."
	dex

KabutopsDexEntry_ENG:	;	simplified
	db   "It swims freely"
	next "through water. It"
	next "catches prey with"
	
	page "scythe-like arms"
	next "and drains the"
	next "victim's fluids."
	dex

AerodactylDexEntry_ENG:	;	simplified
	db   "It was regenerated"
	next "from a dinosaur's"
	next "genetic matter"
	
	page "that was found in"
	next "amber. Flies with"
	next "high-pitched cries"
	dex

SnorlaxDexEntry_ENG:	;	simplified
	db   "It is not satisfied"
	next "unless it eats over"
	next "880 pounds of food"
	
	page "every day. When"
	next "it's done eating,"
	next "it goes to sleep."
	dex

ArticunoDexEntry_ENG:
	db   "A legendary bird"
	next "#MON that is"
	next "said to appear to"
	
	page "doomed people who"
	next "are lost in icy"
	next "mountains."
	dex

ZapdosDexEntry_ENG:
	db   "A legendary bird"
	next "#MON that is"
	next "said to appear"
	
	page "from clouds while"
	next "dropping enormous"
	next "lightning bolts."
	dex

MoltresDexEntry_ENG:
	db   "Known as the"
	next "legendary bird of"
	next "fire. Every flap"
	
	page "of its wings"
	next "creates a dazzling"
	next "flash of flames."
	dex

DratiniDexEntry_ENG:
	db   "Long considered a"
	next "mythical #MON"
	next "until recently"
	
	page "when a small"
	next "colony was found"
	next "living underwater."
	dex

DragonairDexEntry_ENG:	;	"when it does" > "doing so"
	db   "Although it has no"
	next "wings, it can fly"
	next "through the sky."
	
	page "Doing so, it wrig-"
	next "-gles its flexible"
	next "body beutifully."
	dex

DragoniteDexEntry_ENG:
	db   "An extremely"
	next "rarely seen marine"
	next "#MON. Its"
	
	page "intelligence is"
	next "said to match that"
	next "of humans."
	dex

MewtwoDexEntry_ENG:	;	recombined > rejoined
	db   "A #MON of"
	next "genetic code was"
	next "regularly rejoined"
	
	page "for research."
	next "It turned vicious"
	next "as a result."
	dex

MewDexEntry_ENG:
	db   "It's still called"
	next "a mythical #MON."
	next "Its shape was seen"
	
	page "by almost no one"
	next "in the entire"
	next "country."
	dex

NihonMonEntry_ENG:
	db   "A recently discov-"
	next "-ered #MON."
	
	page "Currently under"
	next "investigation."
	dex
