; Pokémon swarms in grass

SwarmGrassWildMons:

; Yanma swarm
	def_grass_wildmons ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, YANMA
	db 12, JIGGLYPUFF
	db 12, EXEGGCUTE
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 13, PIDGEY
	db 10, ABRA
	; day
	db 10, YANMA
	db 12, JIGGLYPUFF
	db 12, PIKACHU
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 13, PIDGEY
	db 10, ABRA
	; nite
	db 10, YANMA
	db 12, JIGGLYPUFF
	db 13, HOOTHOOT
	db 11, MURKROW
	db 12, CLEFAIRY
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	end_grass_wildmons

; Tauros/Miltank swarm
	def_grass_wildmons ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, MILTANK
	db 14, TAUROS
	db 16, RATTATA
	db 17, DODUO
	db 17, PONYTA
	db 17, MEOWTH
	db 18, RATICATE
	; day
	db 14, MILTANK
	db 14, TAUROS
	db 16, RATTATA
	db 17, PONYTA
	db 17, DODUO
	db 17, MEOWTH
	db 18, RATICATE
	; nite
	db 14, MILTANK
	db 14, TAUROS
	db 16, RATTATA
	db 17, MEOWTH
	db 17, DODUO
	db 17, PONYTA
	db 18, RATICATE
	end_grass_wildmons

; Dunsparce/Larvitar swarm
	def_grass_wildmons DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 5, LARVITAR
	db 4, DUNSPARCE
	db 3, GEODUDE
	db 3, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 4, TEDDIURSA
	; day
	db 5, LARVITAR
	db 4, DUNSPARCE
	db 3, GEODUDE
	db 3, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 4, TEDDIURSA
	; nite
	db 5, LARVITAR
	db 4, DUNSPARCE
	db 3, GEODUDE
	db 3, ZUBAT
	db 4, GEODUDE
	db 4, SANDSHREW
	db 4, TEDDIURSA
	end_grass_wildmons

; Dunsparce/Marill swarm
	def_grass_wildmons MOUNT_MORTAR_1F_OUTSIDE
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 18, DUNSPARCE
	db 15, MARILL
	db 15, ZUBAT
	db 16, GEODUDE
	db 14, MACHOP
	db 13, CUBONE
	db 18, AZUMARILL
	; day
	db 18, DUNSPARCE
	db 15, MARILL
	db 15, ZUBAT
	db 16, GEODUDE
	db 14, MACHOP
	db 13, CUBONE
	db 18, AZUMARILL
	; nite
	db 18, DUNSPARCE
	db 15, MARILL
	db 15, ZUBAT
	db 16, GEODUDE
	db 14, MACHOP
	db 13, CUBONE
	db 18, AZUMARILL
	end_grass_wildmons

	db -1 ; end
