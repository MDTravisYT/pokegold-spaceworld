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
	next "both of its cheeks"
	
	page "If threatened,"	;	slightly reworded from "If threatened, it looses electric charges from the sacs."
	next "they lose its"
	next "charge."
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
	db "ざっそう@"
	db 5
	dw 54
	db   "ひるまは　かおを　じめんに　うめて"
	next "あまり　うごかない。よるに　なると"
	next "たねをまきながら　あるきまわる。@"

GloomDexEntry_ENG:
	db "ざっそう@"
	db 8
	dw 86
	db   "めしべが　はなつ　とてつもなく"
	next "くさい　においは　２キロさきまで"
	next "とどき　きを　うしなわせる。@"

VileplumeDexEntry_ENG:
	db "フラワー@"
	db 12
	dw 186
	db   "せかいいち　おおきい　はなびらから"
	next "アレルギーを　おこす　かふんを"
	next "オニの　ように　ばらまく。@"

ParasDexEntry_ENG:
	db "きのこ@"
	db 3
	dw 54
	db   "むしの　せなかに　はえているのは"
	next "とうちゅうかそう　という　キノコ。"
	next "キノコは　そだって　おおきくなる。@"

ParasectDexEntry_ENG:
	db "きのこ@"
	db 10
	dw 295
	db   "キノコの　カサから　どくほうしを"
	next "まきちらす。しかし　ちゅうごくでは"
	next "このほうしを　かんぽうやくに　する。@"

VenonatDexEntry_ENG:
	db "こんちゅう@"
	db 10
	dw 300
	db   "おおきな　きのなかに　すみかをつくり"
	next "ほかのむしなどを　たべてるらしい。"
	next "よるは　あかりのそばに　やってくる。@"

VenomothDexEntry_ENG:
	db "どくが@"
	db 15
	dw 125
	db   "はねに　りんぷんが　ついていて"
	next "ヒラヒラと　はばたくたびに"
	next "もうどくの　こなを　ばらまく。@"

DiglettDexEntry_ENG:
	db "もぐら@"
	db 2
	dw 8
	db   "ちか１メートルくらいを　ほりすすみ"
	next "きのねっこなどを　かじって　いきる。"
	next "たまに　ちじょうに　かおをだす。@"

DugtrioDexEntry_ENG:
	db "もぐら@"
	db 7
	dw 333
	db   "ちちゅうを　ほりすすんで"
	next "ゆだんしている　ところを"
	next "べつの　ばしょから　こうげきする。@"

MeowthDexEntry_ENG:
	db "ばけねこ@"
	db 4
	dw 42
	db   "ひかる　ものが　だいすきで"
	next "あちこち　おちている　おかねを"
	next "ひろって　くることも　おおい。@"

PersianDexEntry_ENG:
	db "シャムネコ@"
	db 10
	dw 320
	db   "きしょうが　はげしく　しっぽを"
	next "まっすぐ　たてたら　よう　ちゅうい。"
	next "とびかかって　かみつく　まえぶれだ。@"

PsyduckDexEntry_ENG:
	db "あひる@"
	db 8
	dw 196
	db   "いつも　ずつうに　なやまされている。"
	next "この　ずつうが　はげしくなると"
	next "ふしぎな　ちからを　つかいはじめる。@"

GolduckDexEntry_ENG:
	db "あひる@"
	db 17
	dw 766
	db   "てのひらが　みずかきに　なっていて"
	next "およぐのが　とくい。みずうみなどで"
	next "ゆうがな　すがたが　みかけられる。@"

MankeyDexEntry_ENG:
	db "ぶたざる@"
	db 5
	dw 280
	db   "みのこなしが　かるく　きょうぼうな"
	next "せいかく。おこって　あばれだすと"
	next "てが　つけられなくなる。@"

PrimeapeDexEntry_ENG:
	db "ぶたざる@"
	db 10
	dw 320
	db   "なぜか　もうれつに　おこって"
	next "にげても　にげても　どこまでも"
	next "おいかけてくる　せいかくだ。@"

GrowlitheDexEntry_ENG:
	db "こいぬ@"
	db 7
	dw 190
	db   "ひとなつこい　せいかくだが　ひろい"
	next "なわばりを　もっており　ゆだんして"
	next "ちかずくと　こうげきされる。@"

ArcanineDexEntry_ENG:
	db "でんせつ@"
	db 19
	dw 1550
	db   "むかしから　おおくの　ひとを"
	next "とりこにした　うつくしい　ポケモン。"
	next "とぶように　かろやかに　はしる。@"

PoliwagDexEntry_ENG:
	db "おたま@"
	db 6
	dw 124
	db   "スベスベした　くろいひふは　うすい。"
	next "おなかの　なかが　すけて"
	next "うずまきじょうに　みえる。@"

PoliwhirlDexEntry_ENG:
	db "おたま@"
	db 10
	dw 200
	db   "りくでも　すいちゅうでも　くらせる。"
	next "ちじょうでは　いつも　あせをかき"
	next "からだを　ぬめぬめ　させている。@"

PoliwrathDexEntry_ENG:
	db "おたま@"
	db 13
	dw 540
	db   "クロールや　バタフライが　とくいで"
	next "オリンピックの　せんしゅでも　"
	next "ぐんぐんと　おいぬいていく。@"

AbraDexEntry_ENG:
	db "ねんりき@"
	db 9
	dw 195
	db   "１にち　１８じかんは　ねている。"
	next "ねむってる　あいだでも　さまざまな"
	next "ちょうのうりょくを　つかう。@"

KadabraDexEntry_ENG:
	db "ねんりき@"
	db 13
	dw 565
	db   "からだから　とくべつな　アルファはが"
	next "でていて　そばに　ちかよるだけで"
	next "あたまが　いたくなってくる。@"

AlakazamDexEntry_ENG:
	db "ねんりき@"
	db 15
	dw 480
	db   "スーパーコンピュータより　すばやく"
	next "けいさんする　ずのうを　もつ。"
	next "ちのうしすうは　だいたい５０００。@"

MachopDexEntry_ENG:
	db "かいりき@"
	db 8
	dw 195
	db   "ぜんしんが　きんにくで　できている。"
	next "こどものようで　ありながら"
	next "おとな　１００にんを　なげとばす。@"

MachokeDexEntry_ENG:
	db "かいりき@"
	db 15
	dw 705
	db   "つかれることのない　きょうじんな"
	next "にくたい。すごくおもい　にもつを"
	next "はこぶ　しごとなどを　てつだう。@"

MachampDexEntry_ENG:
	db "かいりき@"
	db 16
	dw 1300
	db   "はったつした　４ほんの　うでは"
	next "２びょうかんに　１０００ぱつの"
	next "パンチを　くりだすことができる。@"

BellsproutDexEntry_ENG:
	db "フラワー@"
	db 7
	dw 40
	db   "ひとの　かおのような　ツボミから"
	next "でんせつの　マンドラゴラの　いっしゅ"
	next "ではないかと　ささやかれている。@"

WeepinbellDexEntry_ENG:
	db "ハエとり@"
	db 10
	dw 64
	db   "ハッパの　ぶぶんは　カッターになって"
	next "あいてを　きりさく。くちからは"
	next "なんでも　とかす　えきたいを　はく。@"

VictreebelDexEntry_ENG:
	db "ハエとり@"
	db 17
	dw 155
	db   "なんごくに　おおく　はっせいする"
	next "きょうぼうな　しょくぶつ　ポケモン。"
	next "ようかいえきで　なんでも　とかす。@"

TentacoolDexEntry_ENG:
	db "くらげ@"
	db 9
	dw 455
	db   "まるで　すいしょうのような"
	next "めだまから　ふしぎな　ひかりの"
	next "ビームを　はっしゃする。@"

TentacruelDexEntry_ENG:
	db "くらげ@"
	db 16
	dw 550
	db   "８０ぽん　の　しょくしゅが　じゆうに"
	next "うごく。さされると　どくに　おかされ"
	next "するどい　いたみが　はしる。@"

GeodudeDexEntry_ENG:
	db "がんせき@"
	db 4
	dw 20
	db   "そうげんや　やまに　せいそくする。"
	next "いしころに　にていて　きがつかずに"
	next "ふんだり　つまずいたり　してしまう。@"

GravelerDexEntry_ENG:
	db "がんせき@"
	db 10
	dw 1050
	db   "たかい　やまの　さかみちを"
	next "ころがりながら　いどうするとき"
	next "じゃまものは　おしつぶしていく。@"

GolemDexEntry_ENG:
	db "メガトン@"
	db 14
	dw 3000
	db   "がんせきのような　かたい　からだで"
	next "できている。ダイナマイトで"
	next "ばくはしても　ダメージを　うけない。@"

PonytaDexEntry_ENG:
	db "ひのうま@"
	db 10
	dw 300
	db   "からだが　かるく　あしの　ちからが"
	next "ものすごい。１かいの　ジャンプで"
	next "とうきょうタワーも　とびこえる。@"

RapidashDexEntry_ENG:
	db "ひのうま@"
	db 17
	dw 950
	db   "じそくは　さいこう　２４０キロ。"
	next "メラメラ　もえながら　しんかんせんと"
	next "おなじ　スピードで　かけぬける。@"

SlowpokeDexEntry_ENG:
	db "まぬけ@"
	db 12
	dw 360
	db   "うごきが　のろく　まぬけ。"
	next "たたかれても　５びょう　たってから"
	next "いたさを　かんじるほどだ。@"

SlowbroDexEntry_ENG:
	db "やどかり@"
	db 16
	dw 785
	db   "ヤドンが　うみへ　エサを"
	next "とりにいったとき　シェルダーに"
	next "しっぽをかまれ　ヤドランになった。@"

MagnemiteDexEntry_ENG:
	db "じしゃく@"
	db 3
	dw 60
	db   "くうちゅうに　ういたまま　いどうして"
	next "さゆうの　ユニットから"
	next "でんじはなどを　ほうしゃする。@"

MagnetonDexEntry_ENG:
	db "じしゃく@"
	db 10
	dw 600
	db   "ふくすうの　コイルが　れんけつして"
	next "きょうりょくな　じりょくせんと"
	next "こうでんあつを　ほうしゃする。@"

FarfetchdDexEntry_ENG:
	db "かるがも@"
	db 8
	dw 150
	db   "じぶんの　すを　つくるための"
	next "しょくぶつの　クキを　１ぽん"
	next "いつも　もって　あるいている。@"

DoduoDexEntry_ENG:
	db "ふたごどり@"
	db 14
	dw 392
	db   "とぶのは　にがてだが　はしるのは　"
	next "はやく　きょだいな　あしあとを"
	next "のこして　だいちを　かけぬける。@"

DodrioDexEntry_ENG:
	db "みつごどり@"
	db 18
	dw 852
	db   "３つの　あたまで　こうどな"
	next "さくせんを　あやつる。ねるときも"
	next "どれか　１つは　おきているという。@"

SeelDexEntry_ENG:
	db "あしか@"
	db 11
	dw 900
	db   "みずいろの　たいもうに　おおわれた"
	next "ひふは　ぶあつくて　じょうぶ。"
	next "れいか４０ど　でも　かつどうできる。@"

DewgongDexEntry_ENG:
	db "あしか@"
	db 17
	dw 1200
	db   "ぜんしんが　まっしろな　けで"
	next "おおわれている。さむさに　つよく"
	next "むしろ　さむいほど　げんきになる。@"

GrimerDexEntry_ENG:
	db "ヘドロ@"
	db 9
	dw 300
	db   "つきからの　エックスせんをあびた"
	next "ヘドロが　ベトベターにへんかした。"
	next "きたないモノが　だいこうぶつ。@"

MukDexEntry_ENG:
	db "ヘドロ@"
	db 12
	dw 300
	db   "ふだんは　じめんに　まざっていて"
	next "わからない。からだに　さわると"
	next "もうどくに　おかされる。@"

ShellderDexEntry_ENG:
	db "２まいがい@"
	db 3
	dw 40
	db   "ダイヤモンドよりも　かたいカラに"
	next "おおわれている。しかし　なかは"
	next "とても　やわらかい。@"

CloysterDexEntry_ENG:
	db "２まいがい@"
	db 15
	dw 1325
	db   "カラが　ひじょうに　かたく"
	next "ナパームだんでも　こわせない。"
	next "こうげきするときだけ　ひらく。@"

GastlyDexEntry_ENG:
	db "ガスじょう@"
	db 13
	dw 1
	db   "うすい　ガスじょうの　せいめいたい。"
	next "ガスに　つつまれると"
	next "インドぞうも　２びょうで　たおれる。@"

HaunterDexEntry_ENG:
	db "ガスじょう@"
	db 16
	dw 1
	db   "くらやみで　だれもいないのに"
	next "みられているような　きがしたら"
	next "そこに　ゴーストが　いるのだ。@"

GengarDexEntry_ENG:
	db "シャドー@"
	db 15
	dw 405
	db   "やまで　そうなんしたとき"
	next "いのちをうばいに　くらやみから"
	next "あらわれることが　あるという。@"

OnixDexEntry_ENG:
	db "いわへび@"
	db 88
	dw 2100
	db   "せいちょうすると　からだの"
	next "がんせきせいぶんが　へんかして"
	next "くろい　ダイヤモンドのようになる。@"

DrowzeeDexEntry_ENG:
	db "さいみん@"
	db 10
	dw 324
	db   "ユメをたべるという　でんせつの　"
	next "いきもの　バクの　しそん。"
	next "さいみんじゅつが　とくいだ。@"

HypnoDexEntry_ENG:
	db "さいみん@"
	db 16
	dw 756
	db   "ふりこのようなものを　もちあるく。"
	next "こどもに　さいみんじゅつを　かけて"
	next "どこかへ　つれさるじけんが　あった。@"

KrabbyDexEntry_ENG:
	db "さわがに@"
	db 4
	dw 65
	db   "ハサミは　きょうりょくな　ぶきであり"
	next "よこに　あるくとき　からだの"
	next "バランスをとる　やくめも　はたす。@"

KinglerDexEntry_ENG:
	db "はさみ@"
	db 13
	dw 600
	db   "ハサミは　１まんばりきの"
	next "スーパーパワーを　ひめているのだが"
	next "おおきすぎて　うまく　うごかない。@"

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
	db "ボール@"
	db 5
	dw 104
	db   "はつでんしょなどに　あらわれる。"
	next "モンスターボールと　まちがえて"
	next "さわって　しびれるひとが　おおい。@"

ElectrodeDexEntry_ENG:
	db "ボール@"
	db 12
	dw 666
	db   "ぼうだいな　エレクトン　エネルギーを"
	next "ためこんでおり　ちょっとした"
	next "しげきで　だいばくはつを　おこす。@"

ExeggcuteDexEntry_ENG:
	db "たまご@"
	db 4
	dw 25
	db   "たまごの　ようだが　じつは"
	next "しょくぶつの　タネのような"
	next "いきものだと　いうことが　わかった。@"

ExeggutorDexEntry_ENG:
	db "やしのみ@"
	db 20
	dw 1200
	db   "あるく　ねったいうりん。"
	next "みの　ひとつひとつに"
	next "それぞれ　いしを　もっている。@"

CuboneDexEntry_ENG:
	db "こどく@"
	db 4
	dw 65
	db   "しにわかれた　ははおやの　ほねを"
	next "あたまに　かぶっている。さびしいとき"
	next "おおごえで　なくという。@"

MarowakDexEntry_ENG:
	db "ほねずき@"
	db 10
	dw 450
	db   "からだも　ちいさく　もともと　"
	next "よわかった。ホネを　つかうようになり"
	next "せいかくが　きょうぼうか　した。@"

HitmonleeDexEntry_ENG:
	db "キック@"
	db 15
	dw 498
	db   "あしが　じゆうに　のびちぢみする。"
	next "あいてが　とおく　はなれていても"
	next "かんたんに　けりあげてしまう。@"

HitmonchanDexEntry_ENG:
	db "パンチ@"
	db 14
	dw 502
	db   "プロボクサーの　たましいが"
	next "のりうつった。パンチのスピードは"
	next "しんかんせんよりも　はやい。@"

LickitungDexEntry_ENG:
	db "なめまわし@"
	db 12
	dw 655
	db   "ベロが　からだの　２ばいも　のびる。"
	next "エサをとったり　こうげきをしたりと"
	next "まるで　てのように　うごくのだ。@"

KoffingDexEntry_ENG:
	db "どくガス@"
	db 6
	dw 10
	db   "うすい　バルーンじょうの　からだに"
	next "もうどくの　ガスが　つまっている。"
	next "ちかくに　くるだけで　くさい。@"

WeezingDexEntry_ENG:
	db "どくガス@"
	db 12
	dw 95
	db   "ごくまれに　とつぜんへんいで"
	next "ふたごの　ちいさい　ドガースが"
	next "れんけつしたまま　でることがある。@"

RhyhornDexEntry_ENG:
	db "とげとげ@"
	db 10
	dw 1150
	db   "あたまは　わるいが　ちからが　つよく"
	next "こうそうビルでも　たいあたりで"
	next "コナゴナに　ふんさいしてしまう。@"

RhydonDexEntry_ENG:
	db "ドリル@"
	db 19
	dw 1200
	db   "ぜんしんを　よろいのような　ひふで"
	next "まもっている。２０００どの"
	next "マグマの　なかでも　いきられる。@"

ChanseyDexEntry_ENG:
	db "たまご@"
	db 11
	dw 346
	db   "せいそくすうが　すくない。"
	next "つかまえた　ひとには　しあわせを"
	next "もたらすと　いわれている。@"

TangelaDexEntry_ENG:
	db "ツルじょう@"
	db 10
	dw 350
	db   "ブルーの　つるしょくぶつが"
	next "からみあい　しょうたいは　みえない。"
	next "ちかずくものに　からみついてくる。@"

KangaskhanDexEntry_ENG:
	db "おやこ@"
	db 22
	dw 800
	db   "こどもは　ははおやの　おなかにある"
	next "ふくろから　ほとんど　でてこない。"
	next "やく３ねんで　おやばなれする。@"

HorseaDexEntry_ENG:
	db "ドラゴン@"
	db 4
	dw 80
	db   "ぜんまいのように　クルクルまいた"
	next "しっぽで　バランスをとる。"
	next "スミを　はいて　こうげきする。@"

SeadraDexEntry_ENG:
	db "ドラゴン@"
	db 12
	dw 250
	db   "ハネと　しっぽを　すばやく　うごかし"
	next "まえを　むいたまま　うしろへ"
	next "およぐことも　できる　ポケモン。@"

GoldeenDexEntry_ENG:
	db "きんぎょ@"
	db 6
	dw 150
	db   "せビレ　むなビレが　きんにくのように"
	next "はったつしており　すいちゅうを"
	next "５ノットの　はやさで　およぐ。@"

SeakingDexEntry_ENG:
	db "きんぎょ@"
	db 13
	dw 390
	db   "ツノが　ドリルのように　とがっていて"
	next "いわはだを　ツノで　くりぬき"
	next "じぶんの　すを　つくっている。@"

StaryuDexEntry_ENG:
	db "ほしがた@"
	db 8
	dw 345
	db   "うみべに　おおく　あらわれ"
	next "よるになると　ちゅうしんが"
	next "あかく　てんめつする。@"

StarmieDexEntry_ENG:
	db "なぞの@"
	db 11
	dw 800
	db   "きかがくてきな　ボディーから"
	next "うちゅうせいぶつ　ではないかと"
	next "じもとでは　うたがわれている。@"

MrMimeDexEntry_ENG:
	db "バリアー@"
	db 13
	dw 545
	db   "ひとを　しんじこませるのが　うまい。"
	next "パントマイムで　つくったカベが"
	next "ほんとうに　あらわれるという。@"

ScytherDexEntry_ENG:
	db "かまきり@"
	db 15
	dw 560
	db   "するどいカマで　えものを　きりさき"
	next "いきのねを　とめる。ごくまれに"
	next "ハネをつかって　とぶことがある。@"

JynxDexEntry_ENG:
	db "ひとがた@"
	db 14
	dw 406
	db   "こしを　ふるように　あるいている。"
	next "ゆだんをすると　おもわず　つられて"
	next "おどってしまうという。@"

ElectabuzzDexEntry_ENG:
	db "でんげき@"
	db 11
	dw 300
	db   "つよい　でんきが　だいこうぶつで"
	next "おおきな　はつでんしょ　などに　"
	next "しばしば　あらわれる。@"

MagmarDexEntry_ENG:
	db "ひふき@"
	db 13
	dw 445
	db   "かざんの　かこうちかくで"
	next "みつかった。くちから　ほのおをはく。"
	next "たいおんは　１２００ど　もある。@"

PinsirDexEntry_ENG:
	db "くわがた@"
	db 15
	dw 550
	db   "２ほんの　ながいツノに"
	next "はさまれたら　ちぎれるまで"
	next "はなさないという。@"

TaurosDexEntry_ENG:
	db "あばれうし@"
	db 14
	dw 884
	db   "えものに　ねらいを　つけると"
	next "しっぽで　からだを　たたきながら"
	next "まっすぐ　つっこんでくる。@"

MagikarpDexEntry_ENG:
	db "さかな@"
	db 9
	dw 100
	db   "ちからも　スピードも　ほとんどダメ。"
	next "せかいで　いちばん　よわくて"
	next "なさけない　ポケモンだ。@"

GyaradosDexEntry_ENG:
	db "きょうあく@"
	db 65
	dw 2350
	db   "ひじょうに　きょうぼうで"
	next "くちからだす　はかいこうせんは"
	next "すべてのものを　やきつくす。@"

LaprasDexEntry_ENG:
	db "のりもの@"
	db 25
	dw 2200
	db   "かつて　たくさん　つかまえたため"
	next "ぜつめつ　すんぜんに　なっている。"
	next "ひとをのせて　すすむ。@"

DittoDexEntry_ENG:
	db "へんしん@"
	db 3
	dw 40
	db   "さいぼうそしきを　いっしゅんで"
	next "コピーして　あいて　そっくりに"
	next "へんしんする　のうりょくがある。@"

EeveeDexEntry_ENG:
	db "しんか@"
	db 3
	dw 65
	db   "ふきそくな　いでんしを　もつ。"
	next "いしからでる　ほうしゃせんによって"
	next "からだが　とつぜんへんいを　おこす。@"

VaporeonDexEntry_ENG:
	db "あわはき@"
	db 10
	dw 290
	db   "みずべに　すむが　しっぽには"
	next "さかなのような　ひれが　のこっていて"
	next "にんぎょと　まちがう　ひともいる。@"

JolteonDexEntry_ENG:
	db "かみなり@"
	db 8
	dw 245
	db   "くうきちゅうの　マイナスイオンを"
	next "すいこんで　やく１００００ボルトの"
	next "でんきを　はきだすことができる。@"

FlareonDexEntry_ENG:
	db "ほのお@"
	db 9
	dw 250
	db   "からだに　ほのおを　ためてるとき"
	next "たいおんが　１０００ど　いじょうに"
	next "あがるので　ひじょうに　きけん。@"

PorygonDexEntry_ENG:
	db "バーチャル@"
	db 8
	dw 365
	db   "さいこうの　かがくりょくを　あつめ"
	next "ついに　じんこうの　ポケモンを"
	next "つくることに　せいこうした。@"

OmanyteDexEntry_ENG:
	db "うずまき@"
	db 4
	dw 75
	db   "ぜつめつした　ポケモンだが　まれに"
	next "かせきが　はっけんされ　そこから"
	next "いきかえらせることが　できる。@"

OmastarDexEntry_ENG:
	db "うずまき@"
	db 10
	dw 350
	db   "するどい　キバと　しょくしゅで"
	next "えものに　かみついたら　さいご。"
	next "たいえきを　すいだしてしまう。@"

KabutoDexEntry_ENG:
	db "こうら@"
	db 5
	dw 115
	db   "こだい　せいぶつの　かせきから"
	next "さいせいしたポケモン。"
	next "かたい　カラで　みを　まもっている。@"

KabutopsDexEntry_ENG:
	db "こうら@"
	db 13
	dw 405
	db   "すいちゅうを　じゆうに　およぎ"
	next "するどい　カマで　えものを　とらえ"
	next "たいえきを　すいとってしまう。@"

AerodactylDexEntry_ENG:
	db "かせき@"
	db 18
	dw 590
	db   "こはくに　のこされた　きょうりゅうの"
	next "いでんしから　ふっかつさせた。"
	next "たかいこえで　なきながら　とぶ。@"

SnorlaxDexEntry_ENG:
	db "いねむり@"
	db 21
	dw 4600
	db   "１にちに　たべものを　４００キロ"
	next "たべないと　きが　すまない。"
	next "たべおわると　ねむってしまう。@"

ArticunoDexEntry_ENG:
	db "れいとう@"
	db 17
	dw 554
	db   "ゆきやまで　さむくて　しにそうなとき"
	next "めのまえに　あらわれるといわれる"
	next "でんせつの　れいとうポケモン。@"

ZapdosDexEntry_ENG:
	db "でんげき@"
	db 16
	dw 526
	db   "くもの　うえから　きょだいな"
	next "いなづまを　おとしながら　あらわれる"
	next "でんせつの　とりポケモンである。@"

MoltresDexEntry_ENG:
	db "かえん@"
	db 20
	dw 600
	db   "むかしから　ひのとりでんせつとして"
	next "しられる。　はばたくたびに　はねが"
	next "あかるく　もえあがり　うつくしい。@"

DratiniDexEntry_ENG:
	db "ドラゴン@"
	db 18
	dw 33
	db   "ながいあいだ　まぼろしの　ポケモンと"
	next "よばれた。わずかだが　すいちゅうに"
	next "すんでいることが　わかった。@"

DragonairDexEntry_ENG:
	db "ドラゴン@"
	db 40
	dw 165
	db   "ハネは　ないが　そらを　とべる。"
	next "とぶとき　からだを　しなやかに"
	next "くねらせて　とても　うつくしい。@"

DragoniteDexEntry_ENG:
	db "ドラゴン@"
	db 22
	dw 2100
	db   "すがたを　みたひとは　すくないが"
	next "じつざいする　うみのけしん。ちのうも"
	next "にんげんに　ひってき　するらしい。@"

MewtwoDexEntry_ENG:
	db "いでんし@"
	db 20
	dw 1220
	db   "けんきゅうの　ために　いでんしを"
	next "どんどん　くみかえていった　けっか"
	next "きょうぼうな　ポケモンに　なった。@"

MewDexEntry_ENG:
	db "しんしゅ@"
	db 4
	dw 40
	db   "いまでも　まぼろしの　ポケモンと"
	next "いわれる。そのすがたを　みたものは"
	next "ぜんこくでも　ほとんど　いない。@"

NihonMonEntry_ENG:
	db   "A recently discov-"
	next "-ered #MON."
	
	page "Currently under"
	next "investigation."
	dex
