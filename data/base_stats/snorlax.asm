	db SNORLAX ; 143

	db 160, 110,  65,  30,  65, 110
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 25 ; catch rate
	db 154 ; base exp
	db LEFTOVERS ; item 1
	db LEFTOVERS ; item 2
	db 31 ; gender
	db 100 ; unknown
	db 40 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn MONSTER, MONSTER ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, ROLLOUT, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, FLAMETHROWER, SANDSTORM, FIRE_BLAST, DEFENSE_CURL, WILD_CHARGE, REST, ATTRACT, BODY_SLAM, ROCK_SLIDE, SUBSTITUTE, FOCUS_BLAST, ENDURE, SURF, STRENGTH, WHIRLPOOL, ROCK_SMASH, COUNTER, DOUBLE_EDGE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, IRON_HEAD, SEED_BOMB, SEISMIC_TOSS, SLEEP_TALK, THUNDERPUNCH, ZAP_CANNON, ZEN_HEADBUTT
	; end
