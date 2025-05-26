	db DUNSPARCE ; 206

	db 100,  70,  70,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dunsparce/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, THUNDERBOLT, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICE_BEAM, PROTECT, RAIN_DANCE, TRI_ATTACK, FRUSTRATION, SOLARBEAM, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DIG, FLAMETHROWER, SWAGGER, SLEEP_TALK, FIRE_BLAST, DEFENSE_CURL, BATON_PASS, ROCK_SLIDE, REST, ATTRACT, THIEF, PURSUIT, STRENGTH
	; end
