MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, YANMA,      TAUROS,     "CHUCK@@@@@@", $37, $66, GOLD_BERRY,   37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, SPINARAK,   QWILFISH,   "FUGU@@@@@@@", $96, $66, BITTER_BERRY, 48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY@@@@@@", $98, $88, PRZCUREBERRY, 29189, "TIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    DRAGONAIR,  MISDREAVUS, "CLEOPATRA@@", $77, $66, MIRACLEBERRY, 00283, "EMY@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_HAPPY,     KADABRA,    MACHOKE,    "BAKI@@@@@@@", $96, $66, ICE_BERRY,    15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    SCYTHER,    SLOWPOKE,   "CAESAR@@@@@", $96, $66, KINGS_ROCK,   26491, "KIM@@@@@@@@", TRADE_GENDER_MALE
	assert_table_length NUM_NPC_TRADES
