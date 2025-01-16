	object_const_def
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_CLAIR ; dereferenced -- for now
	const DRAGONSDENB1F_RIVAL
	const DRAGONSDENB1F_DRAGON
	const DRAGONSDENB1F_POKE_BALL2

DragonsDenB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonsDenB1FCheckRivalCallback

DragonsDenB1FCheckRivalCallback:
	;setevent EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED ; debug
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .CheckDay
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.CheckDay:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .AppearRival
	ifequal THURSDAY, .AppearRival
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.AppearRival:
	appear DRAGONSDENB1F_RIVAL
	endcallback

DragonsDenB1FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RivalTalkAgain
	writetext RivalText_Training1
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.RivalTalkAgain:
	writetext RivalText_Training2
	waitbutton
	closetext
	special RestartMapMusic
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

DragonsDenB1FDragonScale:
	itemball DRAGON_SCALE

AncientDragon:
	faceplayer
	opentext
	writetext DragonsDenAncientDragonCryText
	pause 15
	cry AERODACTYL
	closetext
	loadwildmon AERODACTYL, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear DRAGONSDENB1F_DRAGON
.NotBeaten
	reloadmapafterbattle
	opentext
	giveitem DRAGON_FANG
	iffalse .BagFullDragonFang
	waitsfx
	writetext DragonsDenGotDragonsFangText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end
.BagFullDragonFang:
	clearevent EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED
	writetext DragonsDenGotDragonsFangText
	promptbutton
	writetext DragonsDenNoRoomForFangText
	waitbutton
	closetext
	end

DragonsDenB1FDragonFangScript:
	opentext
	giveitem DRAGON_FANG
	iffalse .BagFullDragonFangAgain
	setevent EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED
	disappear DRAGONSDENB1F_POKE_BALL2
	waitsfx
	writetext DragonsDenGotDragonsFangText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end
.BagFullDragonFangAgain
	writetext DragonsDenGotDragonsFangText
	promptbutton
	writetext DragonsDenNoRoomForFangText
	waitbutton
	closetext
	end

DragonsDenAncientDragonCryText:
	text "Aarrgiyaah!"
	done

DragonsDenGotDragonsFangText:
	text "<PLAYER> obtained"
	line "the DRAGON FANG!"
	done

DragonsDenNoRoomForFangText:
	text "But <PLAYER> can't"
	line "carry any more"
	cont "items."
	done

DragonShrineSignpostText:
	text "DRAGON SHRINE"

	para "We give honor to"
	line "the #MON"

	para "that dwell within"
	line "in DRAGON'S DEN."
	done

RivalText_Training1:
	text "…"
	line "What? <PLAYER>?"

	para "…No, I won't"
	line "battle you now…"

	para "My #MON aren't"
	line "ready to beat you."

	para "I can't push them"
	line "too hard now."

	para "I have to be dis-"
	line "ciplined to become"

	para "the greatest #-"
	line "MON trainer…"
	done

RivalText_Training2:
	text "…"

	para "Whew…"

	para "Learn to stay out"
	line "of my way…"
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3

	def_coord_events

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 31,  4, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FDragonScale, EVENT_DRAGONS_DEN_B1F_DRAGON_SCALE
	object_event 35, 22, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR ; dereferenced -- for now
	object_event 20, 23, SPRITE_RIVAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FRivalScript, EVENT_RIVAL_DRAGONS_DEN
	object_event 20, 16, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AncientDragon, EVENT_DRAGONS_DEN_B1F_BLUE_AERODACTYL
	object_event 20, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFangScript, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED