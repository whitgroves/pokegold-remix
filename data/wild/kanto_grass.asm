; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 15, DIGLETT
	db 17, DIGLETT
	db 19, DIGLETT
	db 13, DIGLETT
	db 19, DUGTRIO
	db 24, DUGTRIO
	db 29, DUGTRIO
	; day
	db 15, DIGLETT
	db 17, DIGLETT
	db 19, DIGLETT
	db 13, DIGLETT
	db 19, DUGTRIO
	db 24, DUGTRIO
	db 29, DUGTRIO
	; nite
	db 15, DIGLETT
	db 17, DIGLETT
	db 19, DIGLETT
	db 13, DIGLETT
	db 19, DUGTRIO
	db 24, DUGTRIO
	db 29, DUGTRIO
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, SANDSHREW
	db 12, PARAS
	db 10, SANDSLASH
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; day
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, SANDSHREW
	db 12, PARAS
	db 10, SANDSLASH
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; nite
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, SANDSHREW
	db 12, PARAS
	db 10, SANDSLASH
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	ELIF DEF(_SILVER)
	; morn
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, ZUBAT
	db 12, PARAS
	db 10, GEODUDE
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; day
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, ZUBAT
	db 12, PARAS
	db 10, GEODUDE
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; nite
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, ZUBAT
	db 12, PARAS
	db 10, GEODUDE
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	; day
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	; nite
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	; day
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	; nite
	db 21, ZUBAT
	db 24, GEODUDE
	db 27, MACHOP
	db 25, ONIX
	db 27, MAGNEMITE
	db 25, CUBONE
	db 28, KANGASKHAN
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 35, RHYHORN
	db 32, GRAVELER
	db 32, GOLBAT
	db 25, CHARMELEON
	db 34, MACHOKE
	db 34, PILOSWINE
	db 36, SLUGMA
	; day
	db 35, RHYHORN
	db 32, GRAVELER
	db 32, GOLBAT
	db 25, CHARMELEON
	db 34, MACHOKE
	db 34, PILOSWINE
	db 36, SLUGMA
	; nite
	db 35, RHYHORN
	db 32, GRAVELER
	db 32, GOLBAT
	db 25, CHARMELEON
	db 34, MACHOKE
	db 34, PILOSWINE
	db 36, SLUGMA
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 30, GOLBAT
	db 30, RATICATE
	db 28, ARIADOS
	db 25, WARTORTLE
	db 27, FURRET
	db 28, SHUCKLE
	db 31, DUNSPARCE
	; day
	db 30, GOLBAT
	db 30, RATICATE
	db 28, ARIADOS
	db 25, WARTORTLE
	db 27, FURRET
	db 28, SHUCKLE
	db 31, DUNSPARCE
	; nite
	db 30, GOLBAT
	db 30, RATICATE
	db 28, ARIADOS
	db 25, WARTORTLE
	db 27, FURRET
	db 28, SHUCKLE
	db 31, DUNSPARCE
	end_grass_wildmons

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PIDGEY
	db 2, RATTATA
	db 3, SENTRET
	db 3, PIDGEY
	db 6, FURRET
	db 4, PIDGEY
	db 4, PIDGEY
	; day
	db 2, PIDGEY
	db 2, RATTATA
	db 3, SENTRET
	db 3, PIDGEY
	db 6, FURRET
	db 4, PIDGEY
	db 4, PIDGEY
	; nite
	db 2, HOOTHOOT
	db 2, RATTATA
	db 3, RATTATA
	db 3, HOOTHOOT
	db 6, RATTATA
	db 4, HOOTHOOT
	db 4, HOOTHOOT
	end_grass_wildmons

	def_grass_wildmons ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 3, CATERPIE
	db 3, PIDGEY
	db 5, METAPOD
	db 7, BUTTERFREE
	db 7, PIDGEOTTO
	db 4, PIKACHU
	db 4, PIKACHU
	; day
	db 3, CATERPIE
	db 3, PIDGEY
	db 5, METAPOD
	db 7, PIDGEY
	db 7, PIDGEOTTO
	db 4, PIKACHU
	db 4, PIKACHU
	; nite
	db 3, HOOTHOOT
	db 3, SPINARAK
	db 5, HOOTHOOT
	db 7, NOCTOWL
	db 7, ARIADOS
	db 4, PIKACHU
	db 4, PIKACHU
	ELIF DEF(_SILVER)
	; morn
	db 3, WEEDLE
	db 3, LEDYBA
	db 5, KAKUNA
	db 7, BEEDRILL
	db 7, LEDIAN
	db 4, PIKACHU
	db 4, PIKACHU
	; day
	db 3, WEEDLE
	db 3, PIDGEY
	db 5, KAKUNA
	db 7, PIDGEY
	db 7, PIDGEOTTO
	db 4, PIKACHU
	db 4, PIKACHU
	; nite
	db 3, HOOTHOOT
	db 3, HOOTHOOT
	db 5, HOOTHOOT
	db 7, NOCTOWL
	db 7, NOCTOWL
	db 4, PIKACHU
	db 4, PIKACHU
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 5, SPEAROW
	db 5, RATTATA
	db 8, SPEAROW
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, SPEAROW
	db 8, SPEAROW
	; day
	db 5, SPEAROW
	db 5, RATTATA
	db 8, SPEAROW
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, SPEAROW
	db 8, SPEAROW
	; nite
	db 5, RATTATA
	db 5, ZUBAT
	db 8, RATTATA
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, RATTATA
	db 8, RATTATA
	ELIF DEF(_SILVER)
	; morn
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, SPEAROW
	db 8, SPEAROW
	; day
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, SPEAROW
	db 8, SPEAROW
	; nite
	db 5, RATTATA
	db 5, ZUBAT
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, RATTATA
	db 8, RATTATA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	IF DEF(_GOLD)
	; morn
	db 5, SPEAROW
	db 5, RATTATA
	db 8, SPEAROW
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, SPEAROW
	db 8, SPEAROW
	; day
	db 5, SPEAROW
	db 5, RATTATA
	db 8, SPEAROW
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, SPEAROW
	db 8, SPEAROW
	; nite
	db 5, SPEAROW
	db 5, ZUBAT
	db 8, RATTATA
	db 6, JIGGLYPUFF
	db 10, RATTATA
	db 8, RATTATA
	db 8, RATTATA
	ELIF DEF(_SILVER)
	; morn
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, SPEAROW
	db 8, SPEAROW
	; day
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, SPEAROW
	db 8, SPEAROW
	; nite
	db 5, RATTATA
	db 5, ZUBAT
	db 8, EKANS
	db 6, JIGGLYPUFF
	db 10, ARBOK
	db 8, RATTATA
	db 8, RATTATA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 13, PIDGEY
	db 13, BELLSPROUT
	db 14, PIDGEY
	db 15, PIDGEY
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	; day
	db 13, PIDGEY
	db 13, BELLSPROUT
	db 14, PIDGEY
	db 15, PIDGEY
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	; nite
	db 13, ODDISH
	db 14, ODDISH
	db 13, BELLSPROUT
	db 15, GLOOM
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	ELIF DEF(_SILVER)
	; morn
	db 13, PIDGEY
	db 13, BELLSPROUT
	db 14, MEOWTH
	db 15, PIDGEY
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	; day
	db 13, PIDGEY
	db 13, BELLSPROUT
	db 14, MEOWTH
	db 15, PIDGEY
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	; nite
	db 13, ODDISH
	db 14, MEOWTH
	db 13, BELLSPROUT
	db 15, GLOOM
	db 12, ABRA
	db 14, ABRA
	db 14, ABRA
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 19, RATTATA
	db 19, SPEAROW
	db 17, PIDGEY
	db 25, MEOWTH
	db 24, DIGLETT
	db 20, ODDISH
	db 21, EKANS
	; day
	db 19, RATTATA
	db 19, SPEAROW
	db 17, PIDGEY
	db 24, DIGLETT
	db 21, EKANS
	db 25, MEOWTH
	db 20, ODDISH
	; nite
	db 20, ODDISH
	db 25, MEOWTH
	db 21, EKANS
	db 19, RATTATA
	db 24, DIGLETT
	db 17, PIDGEY
	db 19, SPEAROW
	end_grass_wildmons

	def_grass_wildmons ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 17, RATTATA
	db 17, SPEAROW
	db 18, GROWLITHE
	db 19, RATICATE
	db 19, RATTATA
	db 15, RATTATA
	db 15, RATTATA
	; day
	db 17, RATTATA
	db 17, SPEAROW
	db 18, GROWLITHE
	db 19, RATICATE
	db 19, RATTATA
	db 15, GROWLITHE
	db 15, GROWLITHE
	; nite
	db 17, RATTATA
	db 17, MURKROW
	db 18, GROWLITHE
	db 19, RATICATE
	db 19, MURKROW
	db 15, HOUNDOUR
	db 15, HOUNDOUR
	ELIF DEF(_SILVER)
	; morn
	db 17, MEOWTH
	db 17, SPEAROW
	db 18, VULPIX
	db 19, RATICATE
	db 19, PERSIAN
	db 15, RATTATA
	db 15, RATTATA
	; day
	db 17, MEOWTH
	db 17, SPEAROW
	db 18, VULPIX
	db 19, RATICATE
	db 19, PERSIAN
	db 15, VULPIX
	db 15, VULPIX
	; nite
	db 17, MEOWTH
	db 17, MURKROW
	db 18, VULPIX
	db 19, RATICATE
	db 19, PERSIAN
	db 15, HOUNDOUR
	db 15, HOUNDOUR
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 22, PIDGEOTTO
	db 24, GROWLITHE
	db 24, DODUO
	db 26, PONYTA
	db 25, MEOWTH
	db 26, TAUROS
	db 25, DROWZEE
	; day
	db 22, PIDGEOTTO
	db 26, PONYTA
	db 24, GROWLITHE
	db 24, DODUO
	db 25, VULPIX
	db 26, TAUROS
	db 25, MEOWTH
	; nite
	db 25, DROWZEE
	db 25, MEOWTH
	db 25, VULPIX
	db 24, GROWLITHE
	db 24, DODUO
	db 26, TAUROS
	db 26, PONYTA
	end_grass_wildmons

	def_grass_wildmons ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 19, RATTATA
	db 19, SPEAROW
	db 17, PIDGEY
	db 25, PIKACHU
	db 22, PIDGEOTTO
	db 22, BUTTERFREE
	db 24, PINSIR
	; day
	db 19, RATTATA
	db 19, SPEAROW
	db 17, PIDGEY
	db 25, PIKACHU
	db 22, PIDGEOTTO
	db 23, BEEDRILL
	db 22, BUTTERFREE
	; nite
	db 19, RATTATA
	db 25, PIKACHU
	db 19, SPEAROW
	db 17, PIDGEY
	db 22, PIDGEOTTO
	db 24, PINSIR
	db 23, BEEDRILL
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 19, RATTATA
	db 19, SPEAROW
	db 25, KOFFING
	db 27, MAGNEMITE
	db 28, VOLTORB
	db 24, ELECTABUZZ
	db 25, CUBONE
	; day
	db 19, RATTATA
	db 19, SPEAROW
	db 25, LICKITUNG
	db 27, MAGNEMITE
	db 28, VOLTORB
	db 24, ELECTABUZZ
	db 25, SLOWPOKE
	; nite
	db 19, RATTATA
	db 24, SLOWPOKE
	db 25, GRIMER
	db 27, MAGNEMITE
	db 28, VOLTORB
	db 24, ELECTABUZZ
	db 25, CUBONE
	end_grass_wildmons

	def_grass_wildmons ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, DROWZEE
	db 15, RATTATA
	db 15, MAGNEMITE
	db 16, DROWZEE
	db 16, HYPNO
	db 16, HYPNO
	db 16, HYPNO
	; day
	db 14, DROWZEE
	db 15, RATTATA
	db 15, MAGNEMITE
	db 16, DROWZEE
	db 16, HYPNO
	db 16, HYPNO
	db 16, HYPNO
	; nite
	db 14, DROWZEE
	db 15, RATTATA
	db 15, MAGNEMITE
	db 16, DROWZEE
	db 16, HYPNO
	db 16, HYPNO
	db 16, HYPNO
	end_grass_wildmons

	def_grass_wildmons ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 24, HOPPIP
	db 25, CHANSEY
	; nite
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 24, HOPPIP
	db 25, CHANSEY
	; nite
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 24, HOPPIP
	db 26, SKIPLOOM
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 24, HOPPIP
	db 26, SKIPLOOM
	db 26, SKIPLOOM
	db 25, CHANSEY
	; nite
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 24, HOPPIP
	db 26, SKIPLOOM
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 24, HOPPIP
	db 26, SKIPLOOM
	db 26, SKIPLOOM
	db 25, CHANSEY
	; nite
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 24, HOPPIP
	db 25, CHANSEY
	; nite
	db 23, NIDORINA
	db 23, NIDORINO
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ELIF DEF(_SILVER)
	; morn
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 22, QUAGSIRE
	db 25, CHANSEY
	; day
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, PIDGEOTTO
	db 22, HOPPIP
	db 24, HOPPIP
	db 24, HOPPIP
	db 25, CHANSEY
	; nite
	db 23, NIDORINO
	db 23, NIDORINA
	db 25, NOCTOWL
	db 22, QUAGSIRE
	db 24, QUAGSIRE
	db 24, QUAGSIRE
	db 25, CHANSEY
	ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, FEAROW
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	; day
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, FEAROW
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	; nite
	db 26, GRIMER
	db 27, GRIMER
	db 28, GRIMER
	db 28, MURKROW
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, FEAROW
	db 27, GRIMER
	db 29, GRIMER
	db 30, FEAROW
	db 29, SLUGMA
	db 32, MUK
	db 32, MUK
	; day
	db 28, FEAROW
	db 27, SLUGMA
	db 29, GRIMER
	db 30, FEAROW
	db 25, SLUGMA
	db 32, MUK
	db 32, MUK
	; nite
	db 28, GRIMER
	db 27, GRIMER
	db 29, GRIMER
	db 30, MUK
	db 29, SLUGMA
	db 32, MUK
	db 32, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, FEAROW
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	; day
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, FEAROW
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	; nite
	db 26, GRIMER
	db 27, GRIMER
	db 28, GRIMER
	db 28, MUK
	db 27, SLUGMA
	db 30, MUK
	db 30, MUK
	end_grass_wildmons

	def_grass_wildmons ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, TANGELA
	db 25, TANGELA
	db 35, TANGELA
	db 20, TANGELA
	db 30, TANGELA
	db 28, MR__MIME
	db 28, MR__MIME
	; day
	db 30, TANGELA
	db 25, TANGELA
	db 35, TANGELA
	db 20, TANGELA
	db 28, MR__MIME
	db 30, MR__MIME
	db 30, MR__MIME
	; nite
	db 30, TANGELA
	db 25, TANGELA
	db 35, TANGELA
	db 20, TANGELA
	db 30, TANGELA
	db 28, MR__MIME
	db 28, MR__MIME
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, RATTATA
	db 3, SPEAROW
	db 5, SPEAROW
	db 4, DODUO
	db 6, PONYTA
	db 7, FEAROW
	db 7, FEAROW
	; day
	db 3, RATTATA
	db 3, SPEAROW
	db 5, SPEAROW
	db 4, DODUO
	db 6, PONYTA
	db 7, FEAROW
	db 7, FEAROW
	; nite
	db 3, RATTATA
	db 3, RATTATA
	db 5, RATTATA
	db 4, RATTATA
	db 6, PONYTA
	db 7, RATTATA
	db 7, RATTATA
	end_grass_wildmons

	def_grass_wildmons ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 25, PSYDUCK
	db 19, SPEAROW
	db 20, BELLSPROUT
	db 20, ODDISH
	db 27, KRABBY
	db 22, BUTTERFREE
	db 15, ABRA
	; day
	db 25, PSYDUCK
	db 19, SPEAROW
	db 20, BELLSPROUT
	db 20, ODDISH
	db 27, KRABBY
	db 23, BEEDRILL
	db 22, BUTTERFREE
	; nite
	db 25, PSYDUCK
	db 20, ODDISH
	db 20, BELLSPROUT
	db 19, SPEAROW
	db 27, KRABBY
	db 15, ABRA
	db 23, BEEDRILL
	end_grass_wildmons

	def_grass_wildmons ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 25, PSYDUCK
	db 19, SPEAROW
	db 20, BELLSPROUT
	db 20, ODDISH
	db 27, KRABBY
	db 22, BUTTERFREE
	db 15, ABRA
	; day
	db 25, PSYDUCK
	db 19, SPEAROW
	db 20, BELLSPROUT
	db 20, ODDISH
	db 27, KRABBY
	db 23, BEEDRILL
	db 22, BUTTERFREE
	; nite
	db 25, PSYDUCK
	db 20, ODDISH
	db 20, BELLSPROUT
	db 19, SPEAROW
	db 27, KRABBY
	db 15, ABRA
	db 23, BEEDRILL
	end_grass_wildmons

	def_grass_wildmons ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 31, DODRIO
	db 30, TAUROS
	db 31, GIRAFARIG
	db 25, IVYSAUR
	db 30, YANMA
	db 31, GLIGAR
	db 30, PINSIR
	; day
	db 31, DODRIO
	db 30, TAUROS
	db 31, GIRAFARIG
	db 25, IVYSAUR
	db 30, SCYTHER
	db 30, ARBOK
	db 30, YANMA
	; nite
	db 31, GLIGAR
	db 30, ARBOK
	db 31, GIRAFARIG
	db 25, IVYSAUR
	db 30, PINSIR
	db 30, TAUROS
	db 30, SCYTHER
	end_grass_wildmons

	def_grass_wildmons ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, PIDGEOTTO
	db 27, FURRET
	db 30, RATICATE
	db 30, LEDIAN
	db 32, JUMPLUFF
	db 28, ARIADOS
	db 33, NOCTOWL
	; day
	db 33, PIDGEOTTO
	db 27, FURRET
	db 30, RATICATE
	db 30, LEDIAN
	db 32, JUMPLUFF
	db 28, ARIADOS
	db 35, MURKROW
	; nite
	db 33, NOCTOWL
	db 30, RATICATE
	db 28, ARIADOS
	db 27, FURRET
	db 35, MURKROW
	db 32, JUMPLUFF
	db 33, PIDGEOTTO
	end_grass_wildmons

	def_grass_wildmons ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	IF DEF(_GOLD)
	; morn
	db 39, TANGELA
	db 40, PONYTA
	db 40, URSARING
	db 42, RAPIDASH
	db 41, DODUO
	db 43, DODRIO
	db 43, DODRIO
	; day
	db 39, TANGELA
	db 40, PONYTA
	db 40, URSARING
	db 42, RAPIDASH
	db 41, DODUO
	db 43, DODRIO
	db 43, DODRIO
	; nite
	db 39, TANGELA
	db 40, PONYTA
	db 40, URSARING
	db 40, SNEASEL
	db 42, RAPIDASH
	db 42, RAPIDASH
	db 42, RAPIDASH
	ELIF DEF(_SILVER)
	; morn
	db 39, TANGELA
	db 40, PONYTA
	db 40, DONPHAN
	db 42, RAPIDASH
	db 41, DODUO
	db 43, DODRIO
	db 43, DODRIO
	; day
	db 39, TANGELA
	db 40, PONYTA
	db 40, DONPHAN
	db 42, RAPIDASH
	db 41, DODUO
	db 43, DODRIO
	db 43, DODRIO
	; nite
	db 39, TANGELA
	db 40, PONYTA
	db 40, DONPHAN
	db 40, SNEASEL
	db 42, RAPIDASH
	db 42, RAPIDASH
	db 42, RAPIDASH
	ENDC
	end_grass_wildmons

	db -1 ; end
