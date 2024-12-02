BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw KAKUNA,     270
	dbw METAPOD,    257
	dbw SPINARAK,   203

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw YANMA, 		257
	dbw BUTTERFREE, 226
	dbw LEDYBA,	    213

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    321
	dbw HERACROSS,  314
	dbw PINSIR,     331

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw PINSIR,     299
	dbw BUTTERFREE, 292
	dbw VENONAT,    289

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BENNY
	dbw BUTTERFREE, 286
	dbw LEDYBA,     266
	dbw SPINARAK,   257

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     329
	dbw VENONAT,    296
	dbw KAKUNA,     283

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw HERACROSS, 	307
	dbw METAPOD,    271
	dbw LEDYBA,	    238

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    293
	dbw BEEDRILL, 	263
	dbw METAPOD,    254

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw YANMA,      243
	dbw PINSIR,     254
	dbw PARAS,	    226

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    240
	dbw PARAS,      229
	dbw KAKUNA,     233
