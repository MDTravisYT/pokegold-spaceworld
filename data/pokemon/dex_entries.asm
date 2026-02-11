INCLUDE "constants.asm"

; entry format:
;	db category
;	db height (meters * 10)
;	dw weight (kilograms * 10)
;	db entry text

SECTION "data/pokemon/dex_entries.asm", ROMX

PokedexEntryPointers1::
	dw BulbasaurDexEntry
	dw IvysaurDexEntry
	dw VenusaurDexEntry
	dw CharmanderDexEntry
	dw CharmeleonDexEntry
	dw CharizardDexEntry
	dw SquirtleDexEntry
	dw WartortleDexEntry
	dw BlastoiseDexEntry
	dw CaterpieDexEntry
	dw MetapodDexEntry
	dw ButterfreeDexEntry
	dw WeedleDexEntry
	dw KakunaDexEntry
	dw BeedrillDexEntry
	dw PidgeyDexEntry
	dw PidgeottoDexEntry
	dw PidgeotDexEntry
	dw RattataDexEntry
	dw RaticateDexEntry
	dw SpearowDexEntry
	dw FearowDexEntry
	dw EkansDexEntry
	dw ArbokDexEntry
	dw PikachuDexEntry
	dw RaichuDexEntry
	dw SandshrewDexEntry
	dw SandslashDexEntry
	dw NidoranFDexEntry
	dw NidorinaDexEntry
	dw NidoqueenDexEntry
	dw NidoranMDexEntry
	dw NidorinoDexEntry
	dw NidokingDexEntry
	dw ClefairyDexEntry
	dw ClefableDexEntry
	dw VulpixDexEntry
	dw NinetalesDexEntry
	dw JigglypuffDexEntry
	dw WigglytuffDexEntry
	dw ZubatDexEntry
	dw GolbatDexEntry
	dw OddishDexEntry
	dw GloomDexEntry
	dw VileplumeDexEntry
	dw ParasDexEntry
	dw ParasectDexEntry
	dw VenonatDexEntry
	dw VenomothDexEntry
	dw DiglettDexEntry
	dw DugtrioDexEntry
	dw MeowthDexEntry
	dw PersianDexEntry
	dw PsyduckDexEntry
	dw GolduckDexEntry
	dw MankeyDexEntry
	dw PrimeapeDexEntry
	dw GrowlitheDexEntry
	dw ArcanineDexEntry
	dw PoliwagDexEntry
	dw PoliwhirlDexEntry
	dw PoliwrathDexEntry
	dw AbraDexEntry
	dw KadabraDexEntry
	dw AlakazamDexEntry
	dw MachopDexEntry
	dw MachokeDexEntry
	dw MachampDexEntry
	dw BellsproutDexEntry
	dw WeepinbellDexEntry
	dw VictreebelDexEntry
	dw TentacoolDexEntry
	dw TentacruelDexEntry
	dw GeodudeDexEntry
	dw GravelerDexEntry
	dw GolemDexEntry
	dw PonytaDexEntry
	dw RapidashDexEntry
	dw SlowpokeDexEntry
	dw SlowbroDexEntry
	dw MagnemiteDexEntry
	dw MagnetonDexEntry
	dw FarfetchdDexEntry
	dw DoduoDexEntry
	dw DodrioDexEntry
	dw SeelDexEntry
	dw DewgongDexEntry
	dw GrimerDexEntry
	dw MukDexEntry
	dw ShellderDexEntry
	dw CloysterDexEntry
	dw GastlyDexEntry
	dw HaunterDexEntry
	dw GengarDexEntry
	dw OnixDexEntry
	dw DrowzeeDexEntry
	dw HypnoDexEntry
	dw KrabbyDexEntry
	dw KinglerDexEntry

BulbasaurDexEntry:
	db "SEED@"
	db 2,4
	dw 150

IvysaurDexEntry:
	db "SEED@"
	db 3,3
	dw 290

VenusaurDexEntry:
	db "SEED@"
	db 6,7
	dw 2210

CharmanderDexEntry:
	db "LIZARD@"
	db 2,0
	dw 190

CharmeleonDexEntry:
	db "FLAME@"
	db 3,7
	dw 420

CharizardDexEntry:
	db "FLAME@"
	db 5,7
	dw 2000

SquirtleDexEntry:
	db "TINYTURTLE@"
	db 1,8
	dw 200

WartortleDexEntry:
	db "TURTLE@"
	db 3,3
	dw 500

BlastoiseDexEntry:
	db "SHELLFISH@"
	db 5,3
	dw 1890

CaterpieDexEntry:
	db "WORM@"
	db 1,0
	dw 60

MetapodDexEntry:
	db "COCOON@"
	db 2,4
	dw 220

ButterfreeDexEntry:
	db "BUTTERFLY@"
	db 3,7
	dw 710

WeedleDexEntry:
	db "HAIRY BUG@"
	db 1,0
	dw 70

KakunaDexEntry:
	db "COCOON@"
	db 2,0
	dw 220

BeedrillDexEntry:
	db "POISON BEE@"
	db 3,3
	dw 650

PidgeyDexEntry:
	db "TINY BIRD@"
	db 1,0
	dw 40

PidgeottoDexEntry:
	db "BIRD@"
	db 3,7
	dw 660

PidgeotDexEntry:
	db "BIRD@"
	db 4,11
	dw 870

RattataDexEntry:
	db "RAT@"
	db 1,0
	dw 80

RaticateDexEntry:
	db "RAT@"
	db 2,4
	dw 410

SpearowDexEntry:
	db "TINY BIRD@"
	db 1,0
	dw 40

FearowDexEntry:
	db "BEAK@"
	db 3,11
	dw 840

EkansDexEntry:
	db "SNAKE@"
	db 6,7
	dw 150

ArbokDexEntry:
	db "COBRA@"
	db 11,6
	dw 1430

PikachuDexEntry:
	db "MOUSE@"
	db 1,4
	dw 130

RaichuDexEntry:
	db "MOUSE@"
	db 2,7
	dw 660

SandshrewDexEntry:
	db "MOUSE@"
	db 2,0
	dw 260

SandslashDexEntry:
	db "MOUSE@"
	db 3,3
	dw 650

NidoranFDexEntry:
	db "POISON PIN@"
	db 1,4
	dw 150

NidorinaDexEntry:
	db "POISON PIN@"
	db 2,7
	dw 440

NidoqueenDexEntry:
	db "DRILL@"
	db 4,3
	dw 1320

NidoranMDexEntry:
	db "POISON PIN@"
	db 1,8
	dw 200

NidorinoDexEntry:
	db "POISON PIN@"
	db 2,11
	dw 430

NidokingDexEntry:
	db "DRILL@"
	db 4,7
	dw 1370

ClefairyDexEntry:
	db "FAIRY@"
	db 2,0
	dw 170

ClefableDexEntry:
	db "FAIRY@"
	db 4,3
	dw 880

VulpixDexEntry:
	db "FOX@"
	db 2,0
	dw 220

NinetalesDexEntry:
	db "FOX@"
	db 3,7
	dw 440

JigglypuffDexEntry:
	db "BALLOON@"
	db 1,8
	dw 120

WigglytuffDexEntry:
	db "BALLOON@"
	db 3,3
	dw 260

ZubatDexEntry:
	db "BAT@"
	db 2,7
	dw 170

GolbatDexEntry:
	db "BAT@"
	db 5,3
	dw 1210

OddishDexEntry:
	db "WEED@"
	db 1,8
	dw 120

GloomDexEntry:
	db "WEED@"
	db 2,7
	dw 190

VileplumeDexEntry:
	db "FLOWER@"
	db 3,11
	dw 410

ParasDexEntry:
	db "MUSHROOM@"
	db 1,0
	dw 120

ParasectDexEntry:
	db "MUSHROOM@"
	db 3,3
	dw 650

VenonatDexEntry:
	db "INSECT@"
	db 3,3
	dw 660

VenomothDexEntry:
	db "POISONMOTH@"
	db 4,11
	dw 280

DiglettDexEntry:
	db "MOLE@"
	db 0,8
	dw 20

DugtrioDexEntry:
	db "MOLE@"
	db 2,4
	dw 730

MeowthDexEntry:
	db "SCRATCHCAT@"
	db 1,4
	dw 90

PersianDexEntry:
	db "CLASSY CAT@"
	db 3,3
	dw 710

PsyduckDexEntry:
	db "DUCK@"
	db 2,7
	dw 430

GolduckDexEntry:
	db "DUCK@"
	db 5,7
	dw 1690

MankeyDexEntry:
	db "PIG MONKEY@"
	db 1,8
	dw 620

PrimeapeDexEntry:
	db "PIG MONKEY@"
	db 3,3
	dw 710

GrowlitheDexEntry:
	db "PUPPY@"
	db 2,4
	dw 420

ArcanineDexEntry:
	db "LEGENDARY@"
	db 6,3
	dw 3420

PoliwagDexEntry:
	db "TADPOLE@"
	db 2,0
	dw 270

PoliwhirlDexEntry:
	db "TADPOLE@"
	db 3,3
	dw 440

PoliwrathDexEntry:
	db "TADPOLE@"
	db 4,3
	dw 1190

AbraDexEntry:
	db "PSI@"
	db 2,11
	dw 430

KadabraDexEntry:
	db "PSI@"
	db 4,3
	dw 1250

AlakazamDexEntry:
	db "PSI@"
	db 4,11
	dw 1060

MachopDexEntry:
	db "SUPERPOWER@"
	db 2,7
	dw 430

MachokeDexEntry:
	db "SUPERPOWER@"
	db 4,11
	dw 1550

MachampDexEntry:
	db "SUPERPOWER@"
	db 5,3
	dw 2870

BellsproutDexEntry:
	db "FLOWER@"
	db 2,4
	dw 90

WeepinbellDexEntry:
	db "FLYCATCHER@"
	db 3,3
	dw 140

VictreebelDexEntry:
	db "FLYCATCHER@"
	db 5,7
	dw 340

TentacoolDexEntry:
	db "JELLYFISH@"
	db 2,11
	dw 1000

TentacruelDexEntry:
	db "JELLYFISH@"
	db 5,3
	dw 1210

GeodudeDexEntry:
	db "ROCK@"
	db 1,4
	dw 440

GravelerDexEntry:
	db "ROCK@"
	db 3,3
	dw 2320

GolemDexEntry:
	db "MEGATON@"
	db 4,7
	dw 6620

PonytaDexEntry:
	db "FIRE HORSE@"
	db 3,3
	dw 660

RapidashDexEntry:
	db "FIRE HORSE@"
	db 5,7
	dw 2090

SlowpokeDexEntry:
	db "DOPEY@"
	db 3,11
	dw 790

SlowbroDexEntry:
	db "HERMITCRAB@"
	db 5,3
	dw 1730

MagnemiteDexEntry:
	db "MAGNET@"
	db 1,0
	dw 130

MagnetonDexEntry:
	db "MAGNET@"
	db 3,3
	dw 1320

FarfetchdDexEntry:
	db "WILD DUCK@"
	db 2,7
	dw 330

DoduoDexEntry:
	db "TWIN BIRD@"
	db 4,7
	dw 860

DodrioDexEntry:
	db "TRIPLEBIRD@"
	db 5,11
	dw 1880

SeelDexEntry:
	db "SEA LION@"
	db 3,7
	dw 1980

DewgongDexEntry:
	db "SEA LION@"
	db 5,7
	dw 2650

GrimerDexEntry:
	db "SLUDGE@"
	db 2,11
	dw 660

MukDexEntry:
	db "SLUDGE@"
	db 3,11
	dw 660

ShellderDexEntry:
	db "BIVALVE@"
	db 1,0
	dw 90

CloysterDexEntry:
	db "BIVALVE@"
	db 4,11
	dw 2920

GastlyDexEntry:
	db "GAS@"
	db 4,3
	dw 2

HaunterDexEntry:
	db "GAS@"
	db 5,3
	dw 2

GengarDexEntry:
	db "SHADOW@"
	db 4,11
	dw 890

OnixDexEntry:
	db "ROCK SNAKE@"
	db 28,10
	dw 4630

DrowzeeDexEntry:
	db "HYPNOSIS@"
	db 3,3
	dw 710

HypnoDexEntry:
	db "HYPNOSIS@"
	db 5,3
	dw 1670

KrabbyDexEntry:
	db "RIVER CRAB@"
	db 1,4
	dw 140

KinglerDexEntry:
	db "PINCER@"
	db 4,3
	dw 1320

PokedexEntryPointers2::
	dw VoltorbDexEntry
	dw ElectrodeDexEntry
	dw ExeggcuteDexEntry
	dw ExeggutorDexEntry
	dw CuboneDexEntry
	dw MarowakDexEntry
	dw HitmonleeDexEntry
	dw HitmonchanDexEntry
	dw LickitungDexEntry
	dw KoffingDexEntry
	dw WeezingDexEntry
	dw RhyhornDexEntry
	dw RhydonDexEntry
	dw ChanseyDexEntry
	dw TangelaDexEntry
	dw KangaskhanDexEntry
	dw HorseaDexEntry
	dw SeadraDexEntry
	dw GoldeenDexEntry
	dw SeakingDexEntry
	dw StaryuDexEntry
	dw StarmieDexEntry
	dw MrMimeDexEntry
	dw ScytherDexEntry
	dw JynxDexEntry
	dw ElectabuzzDexEntry
	dw MagmarDexEntry
	dw PinsirDexEntry
	dw TaurosDexEntry
	dw MagikarpDexEntry
	dw GyaradosDexEntry
	dw LaprasDexEntry
	dw DittoDexEntry
	dw EeveeDexEntry
	dw VaporeonDexEntry
	dw JolteonDexEntry
	dw FlareonDexEntry
	dw PorygonDexEntry
	dw OmanyteDexEntry
	dw OmastarDexEntry
	dw KabutoDexEntry
	dw KabutopsDexEntry
	dw AerodactylDexEntry
	dw SnorlaxDexEntry
	dw ArticunoDexEntry
	dw ZapdosDexEntry
	dw MoltresDexEntry
	dw DratiniDexEntry
	dw DragonairDexEntry
	dw DragoniteDexEntry
	dw MewtwoDexEntry
	dw MewDexEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry
	dw NihonMonEntry

VoltorbDexEntry:
	db "BALL@"
	db 1,8
	dw 230

ElectrodeDexEntry:
	db "BALL@"
	db 3,11
	dw 1470

ExeggcuteDexEntry:
	db "EGG@"
	db 1,4
	dw 60

ExeggutorDexEntry:
	db "COCONUT@"
	db 6,7
	dw 2650

CuboneDexEntry:
	db "LONELY@"
	db 1,4
	dw 140

MarowakDexEntry:
	db "BONEKEEPER@"
	db 3,3
	dw 990

HitmonleeDexEntry:
	db "KICKING@"
	db 4,11
	dw 1100

HitmonchanDexEntry:
	db "PUNCHING@"
	db 4,7
	dw 1110

LickitungDexEntry:
	db "LICKING@"
	db 3,11
	dw 1440

KoffingDexEntry:
	db "POISON GAS@"
	db 2,0
	dw 20

WeezingDexEntry:
	db "POISON GAS@"
	db 3,11
	dw 210

RhyhornDexEntry:
	db "SPIKES@"
	db 3,3
	dw 2540

RhydonDexEntry:
	db "DRILL@"
	db 6,3
	dw 2650

ChanseyDexEntry:
	db "EGG@"
	db 3,7
	dw 760

TangelaDexEntry:
	db "VINE@"
	db 3,3
	dw 770

KangaskhanDexEntry:
	db "PARENT@"
	db 7,3
	dw 1760

HorseaDexEntry:
	db "DRAGON@"
	db 1,4
	dw 180

SeadraDexEntry:
	db "DRAGON@"
	db 3,11
	dw 550

GoldeenDexEntry:
	db "GOLDFISH@"
	db 2,0
	dw 330

SeakingDexEntry:
	db "GOLDFISH@"
	db 4,3
	dw 860

StaryuDexEntry:
	db "STARSHAPE@"
	db 2,7
	dw 760

StarmieDexEntry:
	db "MYSTERIOUS@"
	db 3,7
	dw 1760

MrMimeDexEntry:
	db "BARRIER@"
	db 4,3
	dw 1200

ScytherDexEntry:
	db "MANTIS@"
	db 4,11
	dw 1230

JynxDexEntry:
	db "HUMANSHAPE@"
	db 4,7
	dw 900

ElectabuzzDexEntry:
	db "ELECTRIC@"
	db 3,7
	dw 660

MagmarDexEntry:
	db "SPITFIRE@"
	db 4,3
	dw 980

PinsirDexEntry:
	db "STAGBEETLE@"
	db 4,11
	dw 1210

TaurosDexEntry:
	db "WILD BULL@"
	db 4,7
	dw 1950

MagikarpDexEntry:
	db "FISH@"
	db 2,11
	dw 220

GyaradosDexEntry:
	db "ATROCIOUS@"
	db 21,4
	dw 5180

LaprasDexEntry:
	db "TRANSPORT@"
	db 8,2
	dw 4850

DittoDexEntry:
	db "TRANSFORM@"
	db 1,0
	dw 90

EeveeDexEntry:
	db "EVOLUTION@"
	db 1,0
	dw 140

VaporeonDexEntry:
	db "BUBBLE JET@"
	db 3,3
	dw 640

JolteonDexEntry:
	db "LIGHTNING@"
	db 2,7
	dw 540

FlareonDexEntry:
	db "FLAME@"
	db 2,11
	dw 550

PorygonDexEntry:
	db "VIRTUAL@"
	db 2,7
	dw 800

OmanyteDexEntry:
	db "SPIRAL@"
	db 1,4
	dw 170

OmastarDexEntry:
	db "SPIRAL@"
	db 3,3
	dw 770

KabutoDexEntry:
	db "SHELLFISH@"
	db 1,8
	dw 250

KabutopsDexEntry:
	db "SHELLFISH@"
	db 4,3
	dw 890

AerodactylDexEntry:
	db "FOSSIL@"
	db 5,11
	dw 1300

SnorlaxDexEntry:
	db "SLEEPING@"
	db 6,11
	dw 10140

ArticunoDexEntry:
	db "FREEZE@"
	db 5,7
	dw 1220

ZapdosDexEntry:
	db "ELECTRIC@"
	db 5,3
	dw 1160

MoltresDexEntry:
	db "FLAME@"
	db 6,7
	dw 1320

DratiniDexEntry:
	db "DRAGON@"
	db 5,11
	dw 70

DragonairDexEntry:
	db "DRAGON@"
	db 13,1
	dw 360

DragoniteDexEntry:
	db "DRAGON@"
	db 7,3
	dw 4630

MewtwoDexEntry:
	db "GENETIC@"
	db 6,7
	dw 2690

MewDexEntry:
	db "NEW SPECIE@"
	db 1,4
	dw 90

NihonMonEntry:
	db "？？？@"
	db 0
	dw 0