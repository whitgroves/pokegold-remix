	db GLIGAR ; 207

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROCK_SMASH, METAL_CLAW, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, RAZOR_WIND, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, SWIFT, BATON_PASS, ROCK_SLIDE, REST, ATTRACT, THIEF, FURY_CUTTER, PURSUIT, CUT, FLY, STRENGTH
	; end
