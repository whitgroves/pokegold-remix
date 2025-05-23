	db TOGETIC ; 176

	db  55,  40,  85,  40,  80, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/togetic/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CURSE, HIDDEN_POWER, SUNNY_DAY, SOLARBEAM, FIRE_BLAST, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER, BLIZZARD, FRUSTRATION, SANDSTORM, RETURN, PSYCHIC_M, SHADOW_BALL, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, REST, ATTRACT, STEEL_WING, FLY, FLASH, WHIRLPOOL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, TRI_ATTACK, BATON_PASS
	; end
