INCLUDE "constants.asm"

SECTION "_new/text/pokemon_names.asm", ROMX

MACRO? monname
	DEF n = NEW_MON_NAME_LENGTH - 1
	ASSERT STRFIND(\1, "@") == -1, "String terminator \"@\" in name: \1"
	ASSERT CHARLEN(\1) <= n, "Name longer than {d:n} characters: \1"
	db \1
	ds n - CHARLEN(\1), '@'
ENDM

PokemonNames_ENG::
	monname "BULBASAUR"
	monname "IVYSAUR"
	monname "VENUSAUR"
	monname "CHARMANDER"
	monname "CHARMELEON"
	monname "CHARIZARD"
	monname "SQUIRTLE"
	monname "WARTORTLE"
	monname "BLASTOISE"
	monname "CATERPIE"
	monname "METAPOD"
	monname "BUTTERFREE"
	monname "WEEDLE"
	monname "KAKUNA"
	monname "BEEDRILL"
	monname "PIDGEY"
	monname "PIDGEOTTO"
	monname "PIDGEOT"
	monname "RATTATA"
	monname "RATICATE"
	monname "SPEAROW"
	monname "FEAROW"
	monname "EKANS"
	monname "ARBOK"
	monname "PIKACHU"
	monname "RAICHU"
	monname "SANDSHREW"
	monname "SANDSLASH"
	monname "NIDORAN_F"
	monname "NIDORINA"
	monname "NIDOQUEEN"
	monname "NIDORAN_M"
	monname "NIDORINO"
	monname "NIDOKING"
	monname "CLEFAIRY"
	monname "CLEFABLE"
	monname "VULPIX"
	monname "NINETALES"
	monname "JIGGLYPUFF"
	monname "WIGGLYTUFF"
	monname "ZUBAT"
	monname "GOLBAT"
	monname "ODDISH"
	monname "GLOOM"
	monname "VILEPLUME"
	monname "PARAS"
	monname "PARASECT"
	monname "VENONAT"
	monname "VENOMOTH"
	monname "DIGLETT"
	monname "DUGTRIO"
	monname "MEOWTH"
	monname "PERSIAN"
	monname "PSYDUCK"
	monname "GOLDUCK"
	monname "MANKEY"
	monname "PRIMEAPE"
	monname "GROWLITHE"
	monname "ARCANINE"
	monname "POLIWAG"
	monname "POLIWHIRL"
	monname "POLIWRATH"
	monname "ABRA"
	monname "KADABRA"
	monname "ALAKAZAM"
	monname "MACHOP"
	monname "MACHOKE"
	monname "MACHAMP"
	monname "BELLSPROUT"
	monname "WEEPINBELL"
	monname "VICTREEBEL"
	monname "TENTACOOL"
	monname "TENTACRUEL"
	monname "GEODUDE"
	monname "GRAVELER"
	monname "GOLEM"
	monname "PONYTA"
	monname "RAPIDASH"
	monname "SLOWPOKE"
	monname "SLOWBRO"
	monname "MAGNEMITE"
	monname "MAGNETON"
	monname "FARFETCHD"
	monname "DODUO"
	monname "DODRIO"
	monname "SEEL"
	monname "DEWGONG"
	monname "GRIMER"
	monname "MUK"
	monname "SHELLDER"
	monname "CLOYSTER"
	monname "GASTLY"
	monname "HAUNTER"
	monname "GENGAR"
	monname "ONIX"
	monname "DROWZEE"
	monname "HYPNO"
	monname "KRABBY"
	monname "KINGLER"
	monname "VOLTORB"
	monname "ELECTRODE"
	monname "EXEGGCUTE"
	monname "EXEGGUTOR"
	monname "CUBONE"
	monname "MAROWAK"
	monname "HITMONLEE"
	monname "HITMONCHAN"
	monname "LICKITUNG"
	monname "KOFFING"
	monname "WEEZING"
	monname "RHYHORN"
	monname "RHYDON"
	monname "CHANSEY"
	monname "TANGELA"
	monname "KANGASKHAN"
	monname "HORSEA"
	monname "SEADRA"
	monname "GOLDEEN"
	monname "SEAKING"
	monname "STARYU"
	monname "STARMIE"
	monname "MRMIME"
	monname "SCYTHER"
	monname "JYNX"
	monname "ELECTABUZZ"
	monname "MAGMAR"
	monname "PINSIR"
	monname "TAUROS"
	monname "MAGIKARP"
	monname "GYARADOS"
	monname "LAPRAS"
	monname "DITTO"
	monname "EEVEE"
	monname "VAPOREON"
	monname "JOLTEON"
	monname "FLAREON"
	monname "PORYGON"
	monname "OMANYTE"
	monname "OMASTAR"
	monname "KABUTO"
	monname "KABUTOPS"
	monname "AERODACTYL"
	monname "SNORLAX"
	monname "ARTICUNO"
	monname "ZAPDOS"
	monname "MOLTRES"
	monname "DRATINI"
	monname "DRAGONAIR"
	monname "DRAGONITE"
	monname "MEWTWO"
	monname "MEW"
	monname "ハッパ" ; 	CHIKORITA
	monname "ハナモグラ" ;	BAYLEEF
	monname "ハナリュウ" ;	MEGANIUM
	monname "ホノオグマ" ;	CUBBURN
	monname "ボルベアー" ;	FLAMBEAR
	monname "ダイナベア" ;	BRUINUS
	monname "クルス" ;	PALSSIO
	monname "アクア" ;	PRESSIO
	monname "アクエリア" ;	DONMARIN
	monname "ホーホー" ;	HOOTHOOT
	monname "ボーボー" ;	NOCTOWL
	monname "パチメエ" ;	MAREEP
	monname "モココ" ; 	FLAAFFY
	monname "デンリュウ" ;	AMPHAROS
	monname "ミコン" ; 	VULPIII
	monname "モンジャ" ;	BURGELA
	monname "ジャランラ" ;	JUNGELA
	monname "ハネエイ" ;	MANTINE
	monname "プクー" ; 	QWILFISH
	monname "シビレフグ" ;	KAZAPPELIN
	monname "ピチュー" ; 	PICHU
	monname "ピィ" ; 	CLEFFA
	monname "ププリン" ;	IGGLYBUFF
	monname "ミズウオ" ;	QUAGSIRE
	monname "ネイティ" ;	NATU
	monname "ネイティオ" ;	XATU
	monname "ギョピン" ;	ORFRY
	monname "マリル" ;	MARILL
	monname "マンボー１" ;	MOLAMBINO
	monname "イカリ" ; 	ANGORE
	monname "グロテス" ;	LURREEL
	monname "エクシング" ;	CROBAT
	monname "パラ" ; 	PARASPOR
	monname "コクモ" ; 	SPINARAK
	monname "ツーヘッド" ;	ARIADOS
	monname "ヨロイドリ" ;	SKARMORY
	monname "アニモン" ;	MIMMEO
	monname "ヒナーズ" ;	DODAERIE
	monname "サニー" ; 	SUNFLORA
	monname "パオン" ;	PHANPY
	monname "ドンファン" ;	DONPHAN
	monname "ツインズ" ;	BIPULLA
	monname "キリンリキ" ;	GIRAFARIG
	monname "ペインター" ;	SMEARGLE
	monname "コーニャ" ; 	COINPUR
	monname "リンリン" ;	MOIBELLE
	monname "ベルルン" ;	BELLEDAM
	monname "ニョロトノ" ; 	POLITOED
	monname "ヤドキング" ;	SLOWKING
	monname "アンノーン" ;	UNOWN
	monname "レディバ" ;	LEDYBA
	monname "ミツボシ" ;	LEDIAN
	monname "プチコーン" ;	KOLTA
	monname "エーフィ" ; 	ESPEON
	monname "ブラッキー" ;	UMBREON
	monname "ターバン" ;	DISTURBAN
	monname "ベトベビー" ;	SMUJJ
	monname "テッポウオ" ;	REMORAID
	monname "オクタン" ;	OCTILLERY
	monname "ゴング" ;	TYROGUE
	monname "カポエラー" ;	HITMONTOP
	monname "プディ" ; 	PUPPERON
	monname "ハネコ" ;	HOPPIP
	monname "ポポネコ" ;	SKIPLOOM
	monname "ワタネコ" ;	JUMPLUFF
	monname "バリリーナ" ;	MIME JR.
	monname "リップ" ; 	SMOOCHUM
	monname "エレベビー" ;	ELEKID
	monname "ブビィ" ; 	MAGBY
	monname "キレイハナ" ;	BELLOSSOM
	monname "ツボミット" ;	BELLIGNAN
	monname "ミルタンク" ;	MILTANK
	monname "ボムシカー" ;	GRENMAR
	monname "ギフト" ; 	DELIBIRD
	monname "コトラ" ; 	TYKER
	monname "ライトラ" ; 	STRAIGAR
	monname "マダーム" ;	LUXWAN
	monname "ノロワラ" ; 	STROMEN
	monname "キョンパン" ;	PHANDARIN
	monname "ヤミカラス" ;	MURKROW
	monname "ハッピー" ; 	BLISSEY
	monname "シザース" ;	SCIZOR
	monname "プラックス" ;	TRICULES
	monname "デビル" ;	HOUNDOUR
	monname "ヘルガー" ;	HOUNDOOM
	monname "ウルフマン" ;	WARFURS
	monname "ワーウルフ" ;	WEARLYCAN
	monname "ポリゴン２" ;	PORYGON2
	monname "ナメール" ;	LICKILICKY
	monname "ハガネール" ;	STEELIX
	monname "キングドラ" ;	KINGDRA
	monname "ライ" ; 	RAIKOU
	monname "エン" ; 	ENTEI
	monname "スイ" ; 	SUICUNE
	monname "ニューラ" ; 	SNEASEL
	monname "ホウオウ" ;	HO-OH
	monname "トゲピー" ; 	TANGELA
	monname "ブルー" ; 	SNUBBULL
	monname "テイル" ;	AIPOM
	monname "リーフィ" ; 	LEAFEON
