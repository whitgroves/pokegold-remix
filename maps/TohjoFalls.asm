	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_MEW

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TohjoFallsMewCallback

TohjoFallsMewCallback:
	checkevent EVENT_BEAT_ELITE_FOUR ; red flag isn't cleared until post-E4
	iffalse .DespawnMew
	checkevent EVENT_RED_IN_MT_SILVER
	iffalse .DespawnMew
	endcallback
.DespawnMew
	disappear TOHJOFALLS_MEW
	endcallback

TohjoFallsMoonStone:
	itemball MOON_STONE

TohjoFallsMew:
	faceplayer
	opentext
	writetext TohjoFallsMewText
	pause 15
	cry MEW
	closetext
	loadwildmon MEW, 50
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear TOHJOFALLS_MEW
	reloadmapafterbattle
	end

TohjoFallsMewText:
	text "…"
	line "mew!"
	done

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 14,  6, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TohjoFallsMew, EVENT_TOHJO_FALLS_MEW
