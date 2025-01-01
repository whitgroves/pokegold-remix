	object_const_def
	const ROUTE24_ROCKET

Route24_MapScripts:
	def_scene_scripts

	def_callbacks

Route24RocketScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketSeenText
	waitbutton
	closetext
	winlosstext Route24RocketBeatenText, -1
	loadtrainer GRUNTM, GRUNTM_31
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketAfterBattleText
	promptbutton
	special FadeOutMusic
	writetext Route24RocketDisappearsText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	pause 25
	special FadeInFromBlack
	playmapmusic
	end

Route24RocketSeenText:
	text "Hyuck-hyuck-hyuck!"
	line "You again?"

	para "You may have"
	line "stopped our fun,"

	para "but TEAM ROCKET's"
	line "not done!"
	done

Route24RocketBeatenText:
	text "Hyuck-hyuck-hyuck!"
	line "The plan ran amok!"
	done

Route24RocketAfterBattleText:
	text "Taking RADIO TOWER"
	line "was only the first"
	cont "part of our plan."

	para "The next part was…"
	line "the MACHINE PART!"

	para "It was supposed to"
	line "boost the… uh…"
	cont "radio signal,"

	para "but now that TEAM"
	line "ROCKET's kaput,"

	para "I figured where's"
	line "the harm in just"
	cont "selling it?"
	done

Route24RocketDisappearsText:
	text "A man's gotta get"
	line "by somehow, right?"

	para "Hyuck-hyuck-hyuck…"
	
	para "But the buyer was"
	line "a no-show…"

	para "So much for going"
	line "solo!"

	para "Hyuck-hyuck-huh?"

	para "Do I remember"
	line "where it is?"
	
	para "I remember moving"
	line "it…"

	para "And a big SPLASH…"

	para "Maybe it's at the"
	line "GYM?"

	para "Hyuck-hyuck-hyuck!"
	line "Good luck!"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
