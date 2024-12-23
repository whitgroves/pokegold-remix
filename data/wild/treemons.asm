TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_None
	dw TreeMonSet_Forest
	dw TreeMonSet_Canyon
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
; last two are unused/ignored
	dw TreeMonSet_Unused
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
TreeMonSet_Unused:
TreeMonSet_City:
; common
	db 50, HOOTHOOT,   10
	db 30, SPEAROW,    10
	db 10, PIDGEY,     10
	db  5, LEDYBA,     10
	db  5, SPINARAK,   10
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 30, MEOWTH,     15
	db 10, ABRA,       15
	db  5, MURKROW,    15
	db  5, MAGNEMITE,  15
	db -1

TreeMonSet_Forest:

; common
	db 50, PINECO,     10
	db 15, AIPOM,      10
	db 15, MANKEY,     10
	db 10, PARAS,  	   10
	db  5, BUTTERFREE, 10
	db  5, BEEDRILL,   10
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, TANGELA,    15
	db 15, SCYTHER,    15
	db 10, HERACROSS,  15
	db  5, PINSIR,     15
	db  5, PIKACHU,    15
	db -1

TreeMonSet_Canyon:
; common
	db 50, HOOTHOOT,   10
	db 15, LEDYBA,     10
	db 15, SPINARAK,   10
	db 10, HOPPIP,     10
	db  5, SPEAROW,    10
	db  5, PIDGEY,     10
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, EKANS,	   15
	db 15, FURRET,	   15
	db 10, JIGGLYPUFF, 15
	db  5, FARFETCH_D, 15
	db  5, TEDDIURSA,  15
	db -1

TreeMonSet_Rock:
	db 60, SHUCKLE,    20
	db 20, SUDOWOODO,  20
	db 10, DUNSPARCE,  20
	db -1
