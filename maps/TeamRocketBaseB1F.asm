	object_const_def
	const TEAMROCKETBASEB1F_ROCKET1
	const TEAMROCKETBASEB1F_ROCKET2
	const TEAMROCKETBASEB1F_SCIENTIST
	const TEAMROCKETBASEB1F_POKE_BALL1
	const TEAMROCKETBASEB1F_POKE_BALL2
	const TEAMROCKETBASEB1F_POKE_BALL3
	const TEAMROCKETBASEB1F_ROCKET_GIRL

TeamRocketBaseB1F_MapScripts:
	def_scene_scripts
	scene_script TeamRocketBaseB1FNoopScene, SCENE_TEAMROCKETBASEB1F_TRAPS

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TeamRocketBaseB1FHideSecurityGruntCallback

TeamRocketBaseB1FNoopScene:
	end

TeamRocketBaseB1FHideSecurityGruntCallback:
	disappear TEAMROCKETBASEB1F_ROCKET1
	endcallback

SecurityCamera1:
	checkevent EVENT_SECURITY_CAMERA_1
	iftrue NoSecurityCamera
	scall PlaySecurityCameraSounds
	checkevent EVENT_TEAM_ROCKET_BASE_POPULATION
	iftrue NoSecurityCamera
	showemote EMOTE_QUESTION, PLAYER, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	moveobject TEAMROCKETBASEB1F_ROCKET1, 19, 2
	appear TEAMROCKETBASEB1F_ROCKET1
	turnobject PLAYER, LEFT
	applymovement TEAMROCKETBASEB1F_ROCKET1, SecurityCameraMovement1
	scall TrainerCameraGrunt1
	ifequal TRUE, NoSecurityCamera
	setevent EVENT_SECURITY_CAMERA_1
	end

SecurityCamera2:
	checkevent EVENT_SECURITY_CAMERA_2
	iftrue NoSecurityCamera
	scall PlaySecurityCameraSounds
	checkevent EVENT_TEAM_ROCKET_BASE_POPULATION
	iftrue NoSecurityCamera
	showemote EMOTE_QUESTION, PLAYER, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject PLAYER, RIGHT
	moveobject TEAMROCKETBASEB1F_ROCKET1, 12, 5
	appear TEAMROCKETBASEB1F_ROCKET1
	applymovement TEAMROCKETBASEB1F_ROCKET1, SecurityCameraMovement3
	scall TrainerCameraGrunt2
	ifequal TRUE, NoSecurityCamera
	setevent EVENT_SECURITY_CAMERA_2
	end

SecurityCamera3:
	checkevent EVENT_SECURITY_CAMERA_3
	iftrue NoSecurityCamera
	scall PlaySecurityCameraSounds
	checkevent EVENT_TEAM_ROCKET_BASE_POPULATION
	iftrue NoSecurityCamera
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject PLAYER, RIGHT
	moveobject TEAMROCKETBASEB1F_ROCKET_GIRL, 25, 11
	appear TEAMROCKETBASEB1F_ROCKET_GIRL
	applymovement TEAMROCKETBASEB1F_ROCKET_GIRL, SecurityCameraMovement6
	scall TrainerCameraGrunt3
	ifequal TRUE, NoSecurityCamera
	setevent EVENT_SECURITY_CAMERA_3
	end

SecurityCamera4:
	checkevent EVENT_SECURITY_CAMERA_4
	iftrue NoSecurityCamera
	scall PlaySecurityCameraSounds
	checkevent EVENT_TEAM_ROCKET_BASE_POPULATION
	iftrue NoSecurityCamera
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	moveobject TEAMROCKETBASEB1F_ROCKET1, 17, 16
	appear TEAMROCKETBASEB1F_ROCKET1
	turnobject PLAYER, LEFT
	applymovement TEAMROCKETBASEB1F_ROCKET1, SecurityCameraMovement1
	scall TrainerCameraGrunt4
	ifequal TRUE, NoSecurityCamera
	setevent EVENT_SECURITY_CAMERA_4
	end

SecurityCamera5:
	checkevent EVENT_SECURITY_CAMERA_5
	iftrue NoSecurityCamera
	scall PlaySecurityCameraSounds
	checkevent EVENT_TEAM_ROCKET_BASE_POPULATION
	iftrue NoSecurityCamera
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	moveobject TEAMROCKETBASEB1F_ROCKET1, 3, 16
	appear TEAMROCKETBASEB1F_ROCKET1
	turnobject PLAYER, LEFT
	applymovement TEAMROCKETBASEB1F_ROCKET1, SecurityCameraMovement1
	scall TrainerCameraGrunt5
	ifequal TRUE, NoSecurityCamera
	setevent EVENT_SECURITY_CAMERA_5
	end

NoSecurityCamera:
	end

TrainerCameraGrunt1:
	opentext
	writetext CameraGrunt1SeenText
	waitbutton
	closetext
	winlosstext CameraGrunt1BeatenText, 0
	setlasttalked TEAMROCKETBASEB1F_ROCKET1
	loadtrainer GRUNTM, GRUNTM_20
	startbattle
	disappear TEAMROCKETBASEB1F_ROCKET1
	reloadmapafterbattle
	end

TrainerCameraGrunt2:
	opentext
	writetext CameraGrunt2SeenText
	waitbutton
	closetext
	winlosstext CameraGrunt2BeatenText, 0
	setlasttalked TEAMROCKETBASEB1F_ROCKET1
	loadtrainer GRUNTM, GRUNTM_21
	startbattle
	disappear TEAMROCKETBASEB1F_ROCKET1
	reloadmapafterbattle
	end

TrainerCameraGrunt3:
	opentext
	writetext CameraGrunt3SeenText
	waitbutton
	closetext
	winlosstext CameraGrunt3BeatenText, 0
	setlasttalked TEAMROCKETBASEB1F_ROCKET_GIRL
	loadtrainer GRUNTF, GRUNTF_6
	startbattle
	disappear TEAMROCKETBASEB1F_ROCKET_GIRL
	reloadmapafterbattle
	end

TrainerCameraGrunt4:
	opentext
	writetext CameraGrunt4SeenText
	waitbutton
	closetext
	winlosstext CameraGrunt4BeatenText, 0
	setlasttalked TEAMROCKETBASEB1F_ROCKET1
	loadtrainer GRUNTM, GRUNTM_22
	startbattle
	disappear TEAMROCKETBASEB1F_ROCKET1
	reloadmapafterbattle
	end

TrainerCameraGrunt5:
	opentext
	writetext CameraGrunt5SeenText
	waitbutton
	closetext
	winlosstext CameraGrunt5BeatenText, 0
	setlasttalked TEAMROCKETBASEB1F_ROCKET1
	loadtrainer GRUNTM, GRUNTM_23
	startbattle
	disappear TEAMROCKETBASEB1F_ROCKET1
	reloadmapafterbattle
	end

PlaySecurityCameraSounds:
	playsound SFX_LICK
	pause 10
	playsound SFX_LICK
	pause 10
	playsound SFX_LICK
	pause 10
	playsound SFX_LICK
	pause 10
	playsound SFX_LICK
	pause 10
	playsound SFX_LICK
	end

ExplodingTrap1:
	checkevent EVENT_EXPLODING_TRAP_1
	iftrue NoExplodingTrap
	scall PinecoExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_1
	end

ExplodingTrap2:
	checkevent EVENT_EXPLODING_TRAP_2
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_2
	end

ExplodingTrap3:
	checkevent EVENT_EXPLODING_TRAP_3
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_3
	end

ExplodingTrap4:
	checkevent EVENT_EXPLODING_TRAP_4
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_4
	end

ExplodingTrap5:
	checkevent EVENT_EXPLODING_TRAP_5
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_5
	end

ExplodingTrap6:
	checkevent EVENT_EXPLODING_TRAP_6
	iftrue NoExplodingTrap
	scall KoffingExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_6
	end

ExplodingTrap7:
	checkevent EVENT_EXPLODING_TRAP_7
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_7
	end

ExplodingTrap8:
	checkevent EVENT_EXPLODING_TRAP_8
	iftrue NoExplodingTrap
	scall PinecoExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_8
	end

ExplodingTrap9:
	checkevent EVENT_EXPLODING_TRAP_9
	iftrue NoExplodingTrap
	scall KoffingExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_9
	end

ExplodingTrap10:
	checkevent EVENT_EXPLODING_TRAP_10
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_10
	end

ExplodingTrap11:
	checkevent EVENT_EXPLODING_TRAP_11
	iftrue NoExplodingTrap
	scall PinecoExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_11
	end

ExplodingTrap12:
	checkevent EVENT_EXPLODING_TRAP_12
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_12
	end

ExplodingTrap13:
	checkevent EVENT_EXPLODING_TRAP_13
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_13
	end

ExplodingTrap14:
	checkevent EVENT_EXPLODING_TRAP_14
	iftrue NoExplodingTrap
	scall KoffingExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_14
	end

ExplodingTrap15:
	checkevent EVENT_EXPLODING_TRAP_15
	iftrue NoExplodingTrap
	scall PinecoExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_15
	end

ExplodingTrap16:
	checkevent EVENT_EXPLODING_TRAP_16
	iftrue NoExplodingTrap
	scall KoffingExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_16
	end

ExplodingTrap17:
	checkevent EVENT_EXPLODING_TRAP_17
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_17
	end

ExplodingTrap18:
	checkevent EVENT_EXPLODING_TRAP_18
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_18
	end

ExplodingTrap19:
	checkevent EVENT_EXPLODING_TRAP_19
	iftrue NoExplodingTrap
	scall GeodudeExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_19
	end

ExplodingTrap20:
	checkevent EVENT_EXPLODING_TRAP_20
	iftrue NoExplodingTrap
	scall VoltorbExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_20
	end

ExplodingTrap21:
	checkevent EVENT_EXPLODING_TRAP_21
	iftrue NoExplodingTrap
	scall KoffingExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_21
	end

ExplodingTrap22:
	checkevent EVENT_EXPLODING_TRAP_22
	iftrue NoExplodingTrap
	scall PinecoExplodingTrap
	reloadmapafterbattle
	setevent EVENT_EXPLODING_TRAP_22
	end

VoltorbExplodingTrap:
	special FadeOutToWhite
	cry VOLTORB
	special FadeInFromWhite
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon VOLTORB, 23
	startbattle
	end

GeodudeExplodingTrap:
	special FadeOutToWhite
	cry GEODUDE
	special FadeInFromWhite
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GEODUDE, 21
	startbattle
	end

KoffingExplodingTrap:
	special FadeOutToWhite
	cry KOFFING
	special FadeInFromWhite
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon KOFFING, 19
	startbattle
	end

PinecoExplodingTrap:
	special FadeOutToWhite
	cry PINECO
	special FadeInFromWhite
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon PINECO, 17
	startbattle
	end

NoExplodingTrap:
	end

TrainerScientistJed:
	trainer SCIENTIST, JED, EVENT_BEAT_SCIENTIST_JED, ScientistJedSeenText, ScientistJedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistJedAfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM16:
	trainer GRUNTM, GRUNTM_16, EVENT_BEAT_ROCKET_GRUNTM_16, GruntM16SeenText, GruntM16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM16AfterBattleText
	waitbutton
	closetext
	end

TeamRocketBaseB1FSecurityCamera:
	jumptext TeamRocketBaseB1FSecurityCameraText

TeamRocketBaseB1FBookshelf:
	jumpstd TeamRocketOathScript

TeamRocketBaseB1FSecretSwitch:
	opentext
	checkevent EVENT_TURNED_OFF_SECURITY_CAMERAS
	iftrue .SecretSwitchOff
	writetext TeamRocketBaseB1FSecretSwitchText
	playsound SFX_TALLY
	waitbutton
	closetext
	setevent EVENT_TURNED_OFF_SECURITY_CAMERAS
	setevent EVENT_SECURITY_CAMERA_1
	setevent EVENT_SECURITY_CAMERA_2
	setevent EVENT_SECURITY_CAMERA_3
	setevent EVENT_SECURITY_CAMERA_4
	setevent EVENT_SECURITY_CAMERA_5
	end

.SecretSwitchOff:
	writetext TeamRocketBaseB1FSwitchOffText
	waitbutton
	closetext
	end

TeamRocketBaseB1FUpGrade:
	itemball UP_GRADE

TeamRocketBaseB1FNugget:
	itemball NUGGET

TeamRocketBaseB1FXAccuracy:
	itemball X_ACCURACY

TeamRocketBaseB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_TEAM_ROCKET_BASE_B1F_HIDDEN_REVIVE

SecurityCameraMovement1:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

SecurityCameraMovement2:
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	turn_head RIGHT
	step_end

SecurityCameraMovement3:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

SecurityCameraMovement4:
; he jumps over a trap
	jump_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	turn_head RIGHT
	step_end

SecurityCameraMovement5:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

SecurityCameraMovement6:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step LEFT
	step_end

SecurityCameraMovement7:
	big_step UP
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	big_step LEFT
	step_end

SecurityCameraMovement8:
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

SecurityCameraMovement9:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

CameraGrunt1SeenText:
	text "Hey!"
	line "Intruder alert!"
	done

CameraGrunt1BeatenText:
	text "I ran up here"
	line "for nothing…"
	done

CameraGrunt2SeenText:
	text "The surveillance"
	line "cams show us"
	cont "everything!"
	done

CameraGrunt2BeatenText:
	text "…everything"
	line "near the #MON"
	cont "statues that is…"
	done

CameraGrunt3SeenText:
	text "You're the brat"
	line "from the WELL!"

	para "What are you"
	line "doing back here?"
	done

CameraGrunt3BeatenText:
	text "Still just a brat!"
	
	para "You'll never find"
	line "the camera switch!"
	done

CameraGrunt4SeenText:
	text "That's far enough!"

	para "I won't let you"
	line "get the SCIENTIST!"
	done

CameraGrunt4BeatenText:
	text "Fine, I'll talk!"
	
	para "JED's the one"
	line "watching the cams!"
	done

CameraGrunt5SeenText:
	text "We got an"
	line "intruder alert"
	cont "downstairs."

	para "Wait… haven't I"
	line "seen you before?"
	done

CameraGrunt5BeatenText:
	text "There's a hidden"
	line "switch that turns"
	cont "off the cameras."

	para "But you've come"
	line "far enough that it"
	cont "doesn't matter."
	done

ScientistJedSeenText:
	text "This was once a"
	line "ninja hideout."

	para "But the security"
	line "cameras are my own"
	cont "personal touch."
	done

ScientistJedBeatenText:
	text "Persistent, huh?"
	done

ScientistJedAfterBattleText:
	text "All right. I'll"
	line "divulge a secret"
	cont "about our hideout."

	para "In the floor near"
	line "the stairs is a"
	cont "warp panel."

	para "But I won't tell"
	line "you where it goes."
	done

GruntM16SeenText:
	text "I bet you think"
	line "you're smart for"
	cont "getting this far…"

	para "But did you expect"
	line "someone guarding"
	cont "the stairs?"
	done

GruntM16BeatenText:
	text "This is why I got"
	line "stair duty…"
	done

GruntM16AfterBattleText:
	text "This room is full"
	line "of traps."

	para "Even I don't know"
	line "where all of them"
	cont "are."
	done

TeamRocketBaseB1FSecurityCameraText:
	text "It's a PERSIAN"
	line "statue…"

	para "The eyes are oddly"
	line "shiny…"

	para "I should keep my"
	line "distance."
	done

TeamRocketBaseB1FSecretSwitchText:
	text "A secret switch!"
	line "Better press it."
	done

TeamRocketBaseB1FSwitchOffText:
	text "The switch is"
	line "turned off."
	done

TeamRocketBaseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  2, MAHOGANY_MART_1F, 3
	warp_event  3, 14, TEAM_ROCKET_BASE_B2F, 1
	warp_event  5, 15, TEAM_ROCKET_BASE_B1F, 4
	warp_event 25,  2, TEAM_ROCKET_BASE_B1F, 3

	def_coord_events
	; There are five security cameras in the base.
	; Walking directly in front of one triggers two Rocket Grunts.
	coord_event 24,  2, SCENE_TEAMROCKETBASEB1F_TRAPS, SecurityCamera1
	coord_event  6,  2, SCENE_TEAMROCKETBASEB1F_TRAPS, SecurityCamera2
	coord_event 24,  6, SCENE_TEAMROCKETBASEB1F_TRAPS, SecurityCamera3
	coord_event 22, 16, SCENE_TEAMROCKETBASEB1F_TRAPS, SecurityCamera4
	coord_event  8, 16, SCENE_TEAMROCKETBASEB1F_TRAPS, SecurityCamera5
	; There are spots on the floor that trigger a Pokémon battle.
	; Each Pokémon (Voltorb, Koffing, Geodude) knows Selfdestruct.
	coord_event  2,  7, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap1
	coord_event  3,  7, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap2
	coord_event  4,  7, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap3
	coord_event  1,  8, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap4
	coord_event  3,  8, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap5
	coord_event  5,  8, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap6
	coord_event  3,  9, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap7
	coord_event  4,  9, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap8
	coord_event  1, 10, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap9
	coord_event  2, 10, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap10
	coord_event  3, 10, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap11
	coord_event  5, 10, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap12
	coord_event  2, 11, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap13
	coord_event  4, 11, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap14
	coord_event  1, 12, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap15
	coord_event  2, 12, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap16
	coord_event  4, 12, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap17
	coord_event  5, 12, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap18
	coord_event  1, 13, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap19
	coord_event  3, 13, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap20
	coord_event  4, 13, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap21
	coord_event  5, 13, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap22

	def_bg_events
	bg_event 19, 11, BGEVENT_READ, TeamRocketBaseB1FSecretSwitch
	bg_event 24,  1, BGEVENT_UP, TeamRocketBaseB1FSecurityCamera
	bg_event  6,  1, BGEVENT_UP, TeamRocketBaseB1FSecurityCamera
	bg_event  8, 15, BGEVENT_UP, TeamRocketBaseB1FSecurityCamera
	bg_event 22, 15, BGEVENT_UP, TeamRocketBaseB1FSecurityCamera
	bg_event 24,  5, BGEVENT_UP, TeamRocketBaseB1FSecurityCamera
	bg_event 20, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelf
	bg_event 21, 11, BGEVENT_READ, TeamRocketBaseB1FBookshelf
	bg_event  3, 11, BGEVENT_ITEM, TeamRocketBaseB1FHiddenRevive

	def_object_events
	object_event  0,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_SECURITY_GRUNTS
	object_event  1, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM16, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 18, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistJed, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 27,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FUpGrade, EVENT_TEAM_ROCKET_BASE_B1F_UP_GRADE
	object_event 14, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FNugget, EVENT_TEAM_ROCKET_BASE_B1F_NUGGET
	object_event 21, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TeamRocketBaseB1FXAccuracy, EVENT_TEAM_ROCKET_BASE_B1F_X_ACCURACY
	object_event  0,  0, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_SECURITY_GRUNTS
