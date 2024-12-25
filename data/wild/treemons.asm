TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_None
	dw TreeMonSet_Forest
	dw TreeMonSet_Canyon
	dw TreeMonSet_Rock
	dw TreeMonSet_City
	assert_table_length NUM_TREEMON_SETS
	
; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
TreeMonSet_City:
; common
	db 50, HOOTHOOT,   10
	db 30, SPEAROW,    10
	db 10, PIDGEY,     10
	db  5, LEDYBA,     10
	db  5, SPINARAK,   10
	db -1
; rare
	db 40, SUDOWOODO,  15
	db 15, MEOWTH,     15
	db 15, ABRA,       15
	db 15, MURKROW,    15
	db 15, MAGNEMITE,  15
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
	db 40, SUDOWOODO,  15
	db 12, TANGELA,    15
	db 12, SCYTHER,    15
	db 12, HERACROSS,  15
	db 12, PINSIR,     15
	db 12, PIKACHU,    15
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
	db 40, SUDOWOODO,  15
	db 12, EKANS,	   15
	db 12, FURRET,	   15
	db 12, JIGGLYPUFF, 15
	db 12, FARFETCH_D, 15
	db 12, TEDDIURSA,  15
	db -1

TreeMonSet_Rock:
	db 50, SHUCKLE,    20
	db 30, KRABBY,     20
	db 20, STARYU,     20
	db -1
