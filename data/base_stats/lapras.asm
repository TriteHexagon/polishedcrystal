	db LAPRAS ; 131

	db 130,  85,  80,  60,  85,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE
	db 45 ; catch rate
	db 219 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 40 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn MONSTER, AMPHIBIAN ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, ICY_WIND, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, DRAGONBREATH, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, DOUBLE_TEAM, SWAGGER, AVALANCHE, REST, ATTRACT, BODY_SLAM, SUBSTITUTE, ENDURE, DRAGON_PULSE, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ROCK_SMASH, AQUA_TAIL, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, HYPER_VOICE, IRON_HEAD, SLEEP_TALK, ZAP_CANNON, ZEN_HEADBUTT
	; end
