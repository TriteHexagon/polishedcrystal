const_value set 2
	const MOUNTMORTARB1F_POKE_BALL1
	const MOUNTMORTARB1F_POKE_BALL2
	const MOUNTMORTARB1F_BOULDER
	const MOUNTMORTARB1F_BLACK_BELT
	const MOUNTMORTARB1F_POKE_BALL3
	const MOUNTMORTARB1F_POKE_BALL4
	const MOUNTMORTARB1F_POKE_BALL5

MountMortarB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

BlackBeltScript_0x7e1f6:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue UnknownScript_0x7e231
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue UnknownScript_0x7e217
	writetext UnknownText_0x7e24d
	waitbutton
	closetext
	winlosstext UnknownText_0x7e2a9, 0
	scriptedtrainerdata BLACKBELT_T, KIYO
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	loadfont
UnknownScript_0x7e217:
	writetext UnknownText_0x7e2c0
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x7e237
	writetext UnknownText_0x7e355
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TYROGUE, 10
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
UnknownScript_0x7e231:
	writetext UnknownText_0x7e36a
	waitbutton
	closetext
	end

UnknownScript_0x7e237:
	writetext UnknownText_0x7e3df
	waitbutton
	closetext
	end

MountMortarB1FBoulder:
	jumpstd strengthboulder

ItemFragment_0x7e240:
	db HYPER_POTION, 1

ItemFragment_0x7e242:
	db CARBOS, 1

ItemFragment_0x7e244:
	db FULL_RESTORE, 1

ItemFragment_0x7e246:
	db MAX_ETHER, 1

ItemFragment_0x7e248:
	db PP_UP, 1

MapMountMortarB1FSignpostItem0:
	dwb EVENT_MOUNT_MORTAR_B1F_HIDDEN_MAX_REVIVE, MAX_REVIVE
	

UnknownText_0x7e24d:
	text "Hey!"

	para "I am the KARATE"
	line "KING!"

	para "I train alone here"
	line "in the dark!"

	para "You!"
	line "Battle with me!"

	para "Hwaaarggh!"
	done

UnknownText_0x7e2a9:
	text "Waaaarggh!"
	line "I'm beaten!"
	done

UnknownText_0x7e2c0:
	text "I… I'm crushed…"

	para "My training is"
	line "still not enough…"

	para "But a loss is a"
	line "loss. I admit it."

	para "As proof that you"
	line "defeated me, I'll"

	para "give you a rare"
	line "fighting #MON."
	done

UnknownText_0x7e355:
	text "<PLAYER> received"
	line "TYROGUE."
	done

UnknownText_0x7e36a:
	text "TYROGUE is a"
	line "fighting-type."

	para "It evolves into a"
	line "tougher #MON."

	para "Keep up the hard"
	line "work. I'll keep"
	cont "training too."

	para "Farewell!"
	done

UnknownText_0x7e3df:
	text "You have no room"
	line "in your party!"
	done

MountMortarB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $3, $3, 5, MOUNT_MORTAR_1F_INSIDE
	warp_def $1d, $13, 7, MOUNT_MORTAR_1F_OUTSIDE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 6, 4, SIGNPOST_ITEM, MapMountMortarB1FSignpostItem0

.PersonEvents:
	db 7
	person_event SPRITE_POKE_BALL, 12, 29, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x7e240, EVENT_MOUNT_MORTAR_B1F_HYPER_POTION
	person_event SPRITE_POKE_BALL, 16, 4, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x7e242, EVENT_MOUNT_MORTAR_B1F_CARBOS
	person_event SPRITE_BOULDER, 10, 9, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MountMortarB1FBoulder, -1
	person_event SPRITE_BLACK_BELT, 4, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BlackBeltScript_0x7e1f6, -1
	person_event SPRITE_POKE_BALL, 24, 34, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x7e244, EVENT_MOUNT_MORTAR_B1F_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 3, 32, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x7e246, EVENT_MOUNT_MORTAR_B1F_MAX_ETHER
	person_event SPRITE_POKE_BALL, 26, 21, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x7e248, EVENT_MOUNT_MORTAR_B1F_PP_UP
