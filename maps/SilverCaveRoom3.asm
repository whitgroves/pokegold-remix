	object_const_def
	const SILVERCAVEROOM3_RED
	const SILVERCAVEROOM3_ARTICUNO
	const SILVERCAVEROOM3_ZAPDOS
	const SILVERCAVEROOM3_MOLTRES

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, LegendaryBirdCallback

LegendaryBirdCallback:
	disappear SILVERCAVEROOM3_ARTICUNO
	disappear SILVERCAVEROOM3_ZAPDOS
	disappear SILVERCAVEROOM3_MOLTRES
	checkevent EVENT_RED_IN_MT_SILVER
	iftrue .SpawnBird
	endcallback
	
.SpawnBird:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .ArticunoCallback
	ifequal THURSDAY, .ZapdosCallback
	ifequal SUNDAY, .MoltresCallback

.ArticunoCallback:
	appear SILVERCAVEROOM3_ARTICUNO
	endcallback

.ZapdosCallback:
	appear SILVERCAVEROOM3_ZAPDOS
	endcallback

.MoltresCallback:
	appear SILVERCAVEROOM3_MOLTRES
	endcallback

Red:
	special FadeOutMusic
	faceplayer
	opentext
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	clearevent EVENT_MT_SILVER_ARTICUNO
	clearevent EVENT_MT_SILVER_ZAPDOS
	clearevent EVENT_MT_SILVER_MOLTRES
	pause 15
	special FadeInFromBlack
	pause 30
	special HealParty
	reanchormap
	credits
	end

Articuno:
	faceplayer
	opentext
	writetext LegendaryBirdCryText
	pause 15
	cry ARTICUNO
	closetext
	loadwildmon ARTICUNO, 75
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear SILVERCAVEROOM3_ARTICUNO
	reloadmapafterbattle
	end

Zapdos:
	faceplayer
	opentext
	writetext LegendaryBirdCryText
	pause 15
	cry ZAPDOS
	closetext
	loadwildmon ZAPDOS, 75
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear SILVERCAVEROOM3_ZAPDOS
	reloadmapafterbattle
	end

Moltres:
	faceplayer
	opentext
	writetext LegendaryBirdCryText
	pause 15
	cry MOLTRES
	closetext
	loadwildmon MOLTRES, 75
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear SILVERCAVEROOM3_MOLTRES
	reloadmapafterbattle
	end

RedSeenText:
	text "…"
	line "…"
	done

RedWinLossText:
	text "…"
	done

RedLeavesText:
	text "…"
	line "…"
	done

LegendaryBirdCryText:
	text "Gyaoo!"
	done

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
	object_event  9, 10, SPRITE_MOLTRES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_MT_SILVER_ARTICUNO
	object_event  9, 10, SPRITE_MOLTRES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Zapdos, EVENT_MT_SILVER_ZAPDOS
	object_event  9, 10, SPRITE_MOLTRES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Moltres, EVENT_MT_SILVER_MOLTRES