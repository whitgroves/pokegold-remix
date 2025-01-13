	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_YOUNGSTER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	writetext BrockBoulderBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext BrockFightDoneText
	waitbutton
	closetext
	end

TrainerCamperJerry:
	trainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJerryAfterBattleText
	waitbutton
	closetext
	end

PewterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	waitbutton
	closetext
	end

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	jumpstd GymStatue2Script

BrockIntroText:
	text "Wow, it's not"
	line "often that we"

	para "get a challenger"
	line "from JOHTO."

	para "I'm BROCK, the"
	line "PEWTER GYM LEADER."

	para "I'm an expert on"
	line "rock-type #MON."

	para "My #MON can"
	line "weather any storm."

	para "Will your team be"
	line "able to wear them"
	cont "down?"

	para "Come on!"
	done

BrockWinLossText:
	text "Your #MON's"
	line "endurance overcame"
	cont "my team's defense…"

	para "You're stronger"
	line "than I expected…"

	para "Go ahead--take"
	line "this BADGE."
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "BOULDERBADGE."
	done

BrockBoulderBadgeText:
	text "Thanks, <PLAYER>."
	line "I enjoyed battling"

	para "you, even though"
	line "I'm a bit upset."

	para "That BOULDERBADGE"
	line "will make your"

	para "#MON even more"
	line "powerful."
	done

BrockFightDoneText:
	text "The world is huge."
	line "In it there are"

	para "still many strong"
	line "trainers like you."

	para "Just wait and see."
	line "I'm going to be-"
	cont "come stronger too."
	done

CamperJerrySeenText:
	text "The trainers of"
	line "this GYM use rock-"
	cont "type #MON."

	para "That includes"
	line "#MON that became"

	para "the rock-type when"
	line "they were revived"

	para "from fossils."
	line "Are you ready?"
	done

CamperJerryBeatenText:
	text "Fossil #MON"
	line "weren't enough…"
	done

CamperJerryAfterBattleText:
	text "Hey, you! Trainer"
	line "from JOHTO! BROCK"

	para "is tough. He'll"
	line "punish you if you"

	para "don't take him"
	line "seriously."
	done

PewterGymGuideText:
	text "Yo! CHAMP in"
	line "making! You're"

	para "really rocking."
	line "Are you battling"

	para "the GYM LEADERS of"
	line "KANTO?"

	para "They're strong and"
	line "dedicated people,"

	para "just like JOHTO's"
	line "GYM LEADERS."
	done

PewterGymGuideWinText:
	text "Yo! CHAMP in"
	line "making! That GYM"

	para "didn't give you"
	line "much trouble."

	para "The way you took"
	line "charge was really"

	para "inspiring. I mean"
	line "that seriously."
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJerry, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
