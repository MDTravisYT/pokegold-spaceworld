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
	db   "FarStringTest"
	next "AAAAAAAAAAAAA"
	next "scram.@"

IvysaurDexEntry_ENG:
	db "たね@"
	db 10
	dw 130
	db   "せなかに　ハナのつぼみが　あり"
	next "ようぶんを　きゅうしゅう　すると"
	next "だんだん　そだってくる。@"

VenusaurDexEntry_ENG:
	db "たね@"
	db 20
	dw 1000
	db   "おおきな　はなを　いじするため"
	next "ひなたをみつけると　まるで"
	next "ひきよせられるように　いどうする。@"

CharmanderDexEntry_ENG:
	db "とかげ@"
	db 6
	dw 85
	db   "あついものを　このむ　せいかく。"
	next "しっぽの　ほのおは　こうふんすると"
	next "おんどが　あがっていく。@"

CharmeleonDexEntry_ENG:
	db "かえん@"
	db 11
	dw 190
	db   "もえる　シッポを　ふりまわすと"
	next "まわりの　おんどが　どんどん"
	next "あがって　あいてを　くるしめる。@"

CharizardDexEntry_ENG:
	db "かえん@"
	db 17
	dw 905
	db   "がんせきも　もえあがるような　"
	next "こうねつの　ほのおを　はいて"
	next "やまかじを　おこすことも　ある。@"

SquirtleDexEntry_ENG:
	db "かめのこ@"
	db 5
	dw 90
	db   "うまれたあと　せなかが　ふくらんで"
	next "かたい　こうらが　できる。くちから"
	next "きょうりょくな　あわを　だす。@"

WartortleDexEntry_ENG:
	db "かめ@"
	db 10
	dw 225
	db   "しばしば　すいちゅうに　かくれ"
	next "えものを　ねらう。はやく　およぐとき"
	next "みみを　うごかして　バランスをとる。@"

BlastoiseDexEntry_ENG:
	db "こうら@"
	db 16
	dw 855
	db   "おもたくて　カラが　かたいため"
	next "のしかかられると　たいていの"
	next "ポケモンは　きを　うしなってしまう。@"

CaterpieDexEntry_ENG:
	db "いもむし@"
	db 3
	dw 29
	db   "みどりの　ひふに　おおわれている。"
	next "だっぴして　せいちょうすると"
	next "いとを　かけて　サナギに　かわる。@"

MetapodDexEntry_ENG:
	db "さなぎ@"
	db 7
	dw 99
	db   "うすい　カラに　つつまれているが"
	next "なかみは　とても　やわらかく"
	next "つよい　こうげきには　たえられない。@"

ButterfreeDexEntry_ENG:
	db "ちょうちょ@"
	db 11
	dw 320
	db   "ハネは　みずを　はじく　りんぷんに"
	next "まもられている。あめの　ひでも"
	next "そらを　とぶことが　できる。@"

WeedleDexEntry_ENG:
	db "けむし@"
	db 3
	dw 32
	db   "もりに　おおく　ハッパを　たべる。"
	next "あたまに　するどい　ハリをもち"
	next "さされると　どくに　おかされる。@"

KakunaDexEntry_ENG:
	db "さなぎ@"
	db 6
	dw 100
	db   "おとなの　からだを　つくるため"
	next "カラのなかで　へんしんちゅう。"
	next "ほとんど　うごけない。@"

BeedrillDexEntry_ENG:
	db "どくばち@"
	db 10
	dw 295
	db   "しゅうだんで　あらわれることもある。"
	next "もうスピードで　とびまわり"
	next "おしりの　どくばりで　さしまくる。@"

PidgeyDexEntry_ENG:
	db "ことり@"
	db 3
	dw 18
	db   "もりや　はやしに　おおく　ぶんぷ。"
	next "ちじょうに　おりてきたとき"
	next "はばたいて　すなを　かけたりする。@"

PidgeottoDexEntry_ENG:
	db "とり@"
	db 11
	dw 300
	db   "あしの　ツメが　はったつしている。"
	next "エサの　タマタマを　つかんで"
	next "１００キロさきの　す　まで　はこぶ。@"

PidgeotDexEntry_ENG:
	db "とり@"
	db 15
	dw 395
	db   "うつくしい　ハネを　ひろげて"
	next "あいてを　いかくする。"
	next "マッハ２で　そらを　とびまわる。@"

RattataDexEntry_ENG:
	db "ねずみ@"
	db 3
	dw 35
	db   "なんでも　かじって　こうげき。"
	next "ちいさいうえに　うごきが　すばやく"
	next "いろんな　ところに　しゅつぼつする。@"

RaticateDexEntry_ENG:
	db "ねずみ@"
	db 7
	dw 185
	db   "うしろあしの　ゆびは　３ぼんで"
	next "ちいさな　みずかきが　ついている。"
	next "かわを　およいで　わたる。@"

SpearowDexEntry_ENG:
	db "ことり@"
	db 3
	dw 20
	db   "くさむらの　むしなどを　たべる。"
	next "はねが　みじかいために　いつも"
	next "いそがしく　はばたいている。@"

FearowDexEntry_ENG:
	db "くちばし@"
	db 12
	dw 380
	db   "おおきな　つばさで　おおぞらを"
	next "とびつづけることが　できる。"
	next "１かいも　おりなくても　へいきだ。@"

EkansDexEntry_ENG:
	db "へび@"
	db 20
	dw 69
	db   "くさちに　おおく　かくれている。"
	next "こどもの　アーボは　どくをもたない。"
	next "かまれても　だいじょうぶだ。@"

ArbokDexEntry_ENG:
	db "コブラ@"
	db 35
	dw 650
	db   "おなかの　もようが　こわいかおに"
	next "みえる。よわいてきは　そのもようを"
	next "みただけで　にげだしてしまう。@"

PikachuDexEntry_ENG:
	db "ねずみ@"
	db 4
	dw 60
	db   "ほっぺたの　りょうがわに"
	next "ちいさい　でんきぶくろを　もっていて"
	next "ピンチのときに　ほうでんする。@"

RaichuDexEntry_ENG:
	db "ねずみ@"
	db 8
	dw 300
	db   "でんげきは　１０まんボルトに"
	next "たっする。シッポに　さわると"
	next "インドぞうでも　きぜつする。@"

SandshrewDexEntry_ENG:
	db "ねずみ@"
	db 6
	dw 120
	db   "みずけの　すくない　ばしょに"
	next "ふかい　あなを　ほって　かくれる。"
	next "えものを　ねらうときは　でてくる。@"

SandslashDexEntry_ENG:
	db "ねずみ@"
	db 10
	dw 295
	db   "せなかを　まるめると　トゲトゲの"
	next "ボールみたいだ。そのまま　ころがって"
	next "ぶつかってきたり　にげたりする。　@"

NidoranFDexEntry_ENG:
	db "どくばり@"
	db 4
	dw 70
	db   "ちいさくても　どくばりの　いりょくは"
	next "きょうれつで　ちゅういが　ひつよう。"
	next "メスのほうが　つのが　ちいさい。@"

NidorinaDexEntry_ENG:
	db "どくばり@"
	db 8
	dw 200
	db   "メスなので　ツノのそだちが　おそい。"
	next "ひっかいたり　かみついたりと"
	next "にくだんせんを　このむ。@"

NidoqueenDexEntry_ENG:
	db "ドリル@"
	db 13
	dw 600
	db   "せなかに　はりのような　ウロコが"
	next "びっしりと　はえている。"
	next "こうふんすると　はりが　さかだつ。@"

NidoranMDexEntry_ENG:
	db "どくばり@"
	db 5
	dw 90
	db   "ながい　みみを　たてて　きけんを"
	next "かんじとる。からだの　とげが"
	next "おおきいほど　つよい　どくをだす。@"

NidorinoDexEntry_ENG:
	db "どくばり@"
	db 9
	dw 195
	db   "すぐに　おこって　たたかおうとする。"
	next "しかも　あたまの　ツノは　ささると"
	next "きょうれつな　どくそをだす　しくみ。@"

NidokingDexEntry_ENG:
	db "ドリル@"
	db 14
	dw 620
	db   "ダイヤのように　かたい　ひふと"
	next "ながく　のびた　ツノが　とくちょう。"
	next "ツノに　どくがあるので　ちゅうい。@"

ClefairyDexEntry_ENG:
	db "ようせい@"
	db 6
	dw 75
	db   "ふしぎで　かわいいので　おおくの"
	next "ファンがいる。ただし　せいそくちが"
	next "かぎられ　みつけるのが　たいへん。@"

ClefableDexEntry_ENG:
	db "ようせい@"
	db 13
	dw 400
	db   "みみが　よくて　１キロ　はなれた"
	next "ところで　おとした　はりのおとを"
	next "みごとに　ききわけられる。@"

VulpixDexEntry_ENG:
	db "きつね@"
	db 6
	dw 99
	db   "こどもだが　６ほんの　しっぽが"
	next "うつくしい。せいちょうすると"
	next "さらに　しっぽが　ふえる。@"

NinetalesDexEntry_ENG:
	db "きつね@"
	db 11
	dw 199
	db   "おうごんに　かがやく　たいもうと"
	next "９ほんの　ながい　しっぽを　もつ。"
	next "１０００ねん　いきると　いわれる。@"

JigglypuffDexEntry_ENG:
	db "ふうせん@"
	db 5
	dw 55
	db   "つぶらな　ひとみが　ゆれるとき"
	next "ねむけを　もよおす　ふしぎで"
	next "きもちのいい　うたを　うたう。@"

WigglytuffDexEntry_ENG:
	db "ふうせん@"
	db 10
	dw 120
	db   "キメこまかい　たいもうは"
	next "しなやかで　さわると　きもちいい。"
	next "けがわにすると　うれるという。@"

ZubatDexEntry_ENG:
	db "こうもり@"
	db 8
	dw 75
	db   "くらい　ばしょに　しゅうだんで"
	next "はっせいする。ちょうおんぱを　だして"
	next "ターゲットに　ちかづいていく。@"

GolbatDexEntry_ENG:
	db "こうもり@"
	db 16
	dw 550
	db   "するどいキバで　かみついて"
	next "いちどに　３００シーシーの"
	next "ちを　すいとってしまう。@"

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
	dw HappaDexEntry_ENG
	dw HanamoguraDexEntry_ENG
	dw HanaryuDexEntry_ENG
	dw HonogumaDexEntry_ENG
	dw VolbearDexEntry_ENG
	dw DynabearDexEntry_ENG
	dw KurusuDexEntry_ENG
	dw AquaDexEntry_ENG
	dw AquariaDexEntry_ENG
	dw HohoDexEntry_ENG
	dw BoboDexEntry_ENG
	dw PachimeeDexEntry_ENG
	dw MokokoDexEntry_ENG
	dw DenryuDexEntry_ENG
	dw MikonDexEntry_ENG
	dw MonjaDexEntry_ENG
	dw JaranraDexEntry_ENG
	dw HaneeiDexEntry_ENG
	dw PukuDexEntry_ENG
	dw ShibirefuguDexEntry_ENG
	dw PichuDexEntry_ENG
	dw PyDexEntry_ENG
	dw PupurinDexEntry_ENG
	dw MizuuoDexEntry_ENG
	dw NatyDexEntry_ENG
	dw NatioDexEntry_ENG
	dw GyopinDexEntry_ENG
	dw MarilDexEntry_ENG
	dw Manbo1DexEntry_ENG
	dw IkariDexEntry_ENG
	dw GrotessDexEntry_ENG
	dw EksingDexEntry_ENG
	dw ParaDexEntry_ENG
	dw KokumoDexEntry_ENG
	dw TwoheadDexEntry_ENG
	dw YoroidoriDexEntry_ENG
	dw AnimonDexEntry_ENG
	dw HinazuDexEntry_ENG
	dw SunnyDexEntry_ENG
	dw PaonDexEntry_ENG
	dw DonphanDexEntry_ENG
	dw TwinzDexEntry_ENG
	dw KirinrikiDexEntry_ENG
	dw PainterDexEntry_ENG
	dw KounyaDexEntry_ENG
	dw RinrinDexEntry_ENG
	dw BerurunDexEntry_ENG
	dw NyorotonoDexEntry_ENG
	dw YadokingDexEntry_ENG
	dw AnnonDexEntry_ENG
	dw RedibaDexEntry_ENG
	dw MitsuboshiDexEntry_ENG
	dw PuchicornDexEntry_ENG
	dw EifieDexEntry_ENG
	dw BlackyDexEntry_ENG
	dw TurbanDexEntry_ENG
	dw BetbabyDexEntry_ENG
	dw TeppouoDexEntry_ENG
	dw OkutankDexEntry_ENG
	dw GonguDexEntry_ENG
	dw KapoererDexEntry_ENG
	dw PudieDexEntry_ENG
	dw HanekoDexEntry_ENG
	dw PoponekoDexEntry_ENG
	dw WatanekoDexEntry_ENG
	dw BaririnaDexEntry_ENG
	dw LipDexEntry_ENG
	dw NorowaraDexEntry_ENG ; should be ElebabyDexEntry_ENG
	dw BoobyDexEntry_ENG
	dw KireihanaDexEntry_ENG
	dw TsubomittoDexEntry_ENG
	dw MiltankDexEntry_ENG
	dw BombseekerDexEntry_ENG
	dw GiftDexEntry_ENG
	dw KotoraDexEntry_ENG
	dw RaitoraDexEntry_ENG
	dw MadameDexEntry_ENG
	dw NorowaraDexEntry_ENG
	dw KyonpanDexEntry_ENG
	dw YamikarasuDexEntry_ENG
	dw HappiDexEntry_ENG
	dw ScissorsDexEntry_ENG
	dw PurakkusuDexEntry_ENG
	dw DevilDexEntry_ENG
	dw HelgaaDexEntry_ENG
	dw WolfmanDexEntry_ENG
	dw WarwolfDexEntry_ENG
	dw Porygon2DexEntry_ENG
	dw NameilDexEntry_ENG
	dw HaganeilDexEntry_ENG
	dw KingdraDexEntry_ENG
	dw RaiDexEntry_ENG
	dw EnDexEntry_ENG
	dw SuiDexEntry_ENG
	dw NyulaDexEntry_ENG
	dw HououDexEntry_ENG
	dw TogepyDexEntry_ENG
	dw BuluDexEntry_ENG
	dw TailDexEntry_ENG
	dw LeafyDexEntry_ENG

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

HappaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HanamoguraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HanaryuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HonogumaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

VolbearDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

DynabearDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KurusuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

AquaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

AquariaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HohoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BoboDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PachimeeDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MokokoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

DenryuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MikonDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MonjaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

JaranraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HaneeiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PukuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

ShibirefuguDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PichuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PupurinDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MizuuoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NatyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NatioDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

GyopinDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MarilDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

Manbo1DexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

IkariDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

GrotessDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

EksingDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

ParaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KokumoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TwoheadDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

YoroidoriDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

AnimonDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HinazuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

SunnyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PaonDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

DonphanDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TwinzDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KirinrikiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PainterDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KounyaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

RinrinDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BerurunDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NyorotonoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

YadokingDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

AnnonDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

RedibaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MitsuboshiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PuchicornDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

EifieDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BlackyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TurbanDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BetbabyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TeppouoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

OkutankDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

GonguDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KapoererDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PudieDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HanekoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PoponekoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

WatanekoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BaririnaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

LipDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

ElebabyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BoobyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KireihanaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TsubomittoDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MiltankDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BombseekerDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

GiftDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KotoraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

RaitoraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

MadameDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NorowaraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KyonpanDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

YamikarasuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HappiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

ScissorsDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

PurakkusuDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

DevilDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HelgaaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

WolfmanDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

WarwolfDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

Porygon2DexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NameilDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HaganeilDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

KingdraDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

RaiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

EnDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

SuiDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

NyulaDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

HououDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TogepyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

BuluDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

TailDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"

LeafyDexEntry_ENG:
	db "？？？@"
	db 0
	dw 0
	db   "はっけんされた　ばかりの　ポケモン"
	next "げんざい　ちょうさちゅう。@"
