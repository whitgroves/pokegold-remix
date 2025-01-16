	object_const_def
	const BLACKTHORNGYM1F_CLAIR
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUIDE

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BlackthornGym1FBouldersCallback

BlackthornGym1FBouldersCallback:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	endcallback

BlackthornGymClairScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writetext BlackthornGymText_ReceivedRisingBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
	writetext ClairText_BadgeSpeech
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	;setevent EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED ; debug
	end

.FightDone:
	checkevent EVENT_DRAGONS_DEN_B1F_BLUE_AERODACTYL
	iffalse .NoDragonFang
	checkevent EVENT_DRAGONS_DEN_B1F_DRAGON_FANG_DROPPED
	iffalse .LeftDragonFang
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext BlackthornGymClairText_YouKeptMeWaiting
	promptbutton
	specialphonecall SPECIALCALL_MASTERBALL
	verbosegiveitem TM_DRAGONBREATH
	iffalse .BagFull
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext BlackthornGymClairText_DescribeTM24
	promptbutton
	writetext ClairText_CollectedAllBadges
	waitbutton
	closetext
	end

.NoDragonFang:
	writetext ClairText_WhatsTheMatter
	waitbutton
	closetext
	end

.LeftDragonFang:
	writetext ClairText_LeftItBehind
	waitbutton
	closetext
	end

.GotTM24:
	writetext BlackthornGymClairText_League
	waitbutton

.BagFull:
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetext
	end

BlackthornGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetext
	end

.BlackthornGymGuideWinScript:
	writetext BlackthornGymGuideWinText
	waitbutton
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
	jumpstd GymStatue2Script

ClairIntroText:
	text "I am CLAIR. I'm"
	line "the world's best"
	cont "dragon master."

	para "I can hold my own"
	line "against even the"

	para "#MON LEAGUE's"
	line "ELITE FOUR."

	para "Do you still want"
	line "to take me on?"

	para "…Fine."
	line "Let's do it!"

	para "As a trainer, I"
	line "will use my full"

	para "power against any"
	line "opponent!"
	done

ClairWinText:
	text "I lost?"
	
	para "…"
	
	para "The RISINGBADGE"
	line "is yours."
	done

BlackthornGymText_ReceivedRisingBadge:
	text "<PLAYER> received"
	line "RISINGBADGE."
	done

ClairText_BadgeSpeech:
	text "RISINGBADGE will"
	line "enable your"

	para "#MON to use the"
	line "move for climbing"
	cont "waterfalls."

	para "Also, all #MON"
	line "will recognize you"

	para "as a trainer and"
	line "obey your commands"
	cont "without question."

	para "However…"
	
	para "I do not recognize"
	line "you as worthy of"
	
	para "our GYM's sacred"
	line "dragon technique."

	para "I may have lost,"
	line "but I can only"
	
	para "pass it on to"
	line "someone who has"
	
	para "taken the dragon"
	line "user challenge."

	para "Behind this GYM is"
	line "a place called"
	cont "DRAGON'S DEN."

	para "Go and bring me"
	line "a DRAGON FANG"

	para "from the ancient"
	line "#MON that lives"
	cont "deep inside."

	para "That is the test"
	line "to be accepted as"
	cont "a dragon user."

	para "If you can do"
	line "that, I will deem"
	cont "you worthy of our"
	cont "GYM's technique."
	done

ClairText_WhatsTheMatter:
	text "What's the matter?"

	para "If you're ready"
	line "for the LEAGUE,"

	para "this errand won't"
	line "be hard for you."
	done

ClairText_LeftItBehind:
	text "You beat the #-"
	line "MON but left the"
	cont "FANG behind?"

	para "How can I entrust"
	line "you with anything?"
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "You kept me"
	line "waiting…"
	
	para "But alright."

	para "You have proven"
	line "yourself worthy."

	para "I want you to have"
	line "this TM."
	done

BlackthornGymClairText_DescribeTM24:
	text "That contains"
	line "DRAGONBREATH."

	para "Most dragons can"
	line "breathe fire, ice,"
	cont "or lightning."

	para "But this move"
	line "channels pure"
	cont "mystical energy."

	para "Receiving this"
	line "technique is"
	cont "an honor,"

	para "So don't take it"
	line "lightly!"
	done

ClairText_CollectedAllBadges:
	text "Now that you've"
	line "beaten all the"
	cont "GYMs in JOHTO,"

	para "your next goal"
	line "should be the"
	cont "#MON LEAGUE."

	para "The trainers along"
	line "the way are tough."

	para "You should prepare"
	line "before you leave."
	done

BlackthornGymClairText_League:
	text "Don't you dare"
	line "lose at the"
	cont "#MON LEAGUE!"

	para "If you do, I'll"
	line "feel even worse"

	para "about having lost"
	line "to you!"
	done

CooltrainermPaulSeenText:
	text "Your first battle"
	line "against dragons?"

	para "I'll show you how"
	line "tough they are!"
	done

CooltrainermPaulBeatenText:
	text "I'm disappointed."
	done

CooltrainermPaulAfterBattleText:
	text "You've met LANCE,"
	line "the dragon master?"

	para "That just can't be"
	line "true."
	done

CooltrainermMikeSeenText:
	text "My chance of"
	line "losing? Not even"
	cont "one percent!"
	done

CooltrainermMikeBeatenText:
	text "That's odd."
	done

CooltrainermMikeAfterBattleText:
	text "I know my short-"
	line "comings now."

	para "Thanks for showing"
	line "me!"
	done

CooltrainerfLolaSeenText:
	text "Dragons are sacred"
	line "#MON."

	para "They are full of"
	line "life energy."

	para "If you're not"
	line "serious, you won't"

	para "be able to beat"
	line "them."
	done

CooltrainerfLolaBeatenText:
	text "Way to go!"
	done

CooltrainerfLolaAfterBattleText:
	text "Dragons are weak"
	line "against dragon-"
	cont "type moves."

	para "Typical fire, ice,"
	line "or electric-type"
	cont "moves won't do it."
	done

BlackthornGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "It's been a long"
	line "journey, but we"

	para "are almost done!"
	line "Count on me!"

	para "CLAIR uses"
	line "mythical and"
	cont "sacred dragon-"
	cont "type #MON."

	para "You can't damage"
	line "them very easily."

	para "But you know,"
	line "I've heard stories"

	para "of dragons taken"
	line "down by ninjas."
	done

BlackthornGymGuideWinText:
	text "You were great to"
	line "beat CLAIR!"

	para "All that's left is"
	line "the #MON LEAGUE"
	
	para "challenge in the"
	line "INDIGO PLATEAU."

	para "Do you know how to"
	line "get there?"

	para "From here, go to"
	line "NEW BARK TOWN,"
	cont "Then SURF east."
	
	para "You're on the way"
	line "to becoming the"
	cont "#MON CHAMPION!"
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  5,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMike, -1
	object_event  1, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
