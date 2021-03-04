; sprite_anim_struct members (see macros/wram.asm)
	const_def
	const SPRITEANIMSTRUCT_INDEX           ; 0
	const SPRITEANIMSTRUCT_FRAMESET_ID     ; 1
	const SPRITEANIMSTRUCT_ANIM_SEQ_ID     ; 2
	const SPRITEANIMSTRUCT_TILE_ID         ; 3
	const SPRITEANIMSTRUCT_XCOORD          ; 4
	const SPRITEANIMSTRUCT_YCOORD          ; 5
	const SPRITEANIMSTRUCT_XOFFSET         ; 6
	const SPRITEANIMSTRUCT_YOFFSET         ; 7
	const SPRITEANIMSTRUCT_DURATION        ; 8
	const SPRITEANIMSTRUCT_DURATIONOFFSET  ; 9
	const SPRITEANIMSTRUCT_FRAME           ; a
	const SPRITEANIMSTRUCT_JUMPTABLE_INDEX ; b
	const SPRITEANIMSTRUCT_VAR1            ; c
	const SPRITEANIMSTRUCT_VAR2            ; d
	const SPRITEANIMSTRUCT_VAR3            ; e
	const SPRITEANIMSTRUCT_VAR4            ; f
SPRITEANIMSTRUCT_LENGTH EQU const_value
NUM_SPRITE_ANIM_STRUCTS EQU 10 ; see wSpriteAnimationStructs

; wSpriteAnimDict keys (see wram.asm)
; UnusedSpriteAnimGFX indexes (see data/sprite_anims/unused_gfx.asm)
	const_def
	const SPRITE_ANIM_DICT_DEFAULT      ; 0
	const SPRITE_ANIM_DICT_GS_INTRO     ; 1
	const SPRITE_ANIM_DICT_GS_INTRO_2   ; 2
	const_skip 2                        ; unused
	const SPRITE_ANIM_DICT_TEXT_CURSOR  ; 5
	const SPRITE_ANIM_DICT_GS_SPLASH    ; 6
	const SPRITE_ANIM_DICT_SLOTS        ; 7
	const SPRITE_ANIM_DICT_ARROW_CURSOR ; 8

; wSpriteAnimDict size (see wram.asm)
NUM_SPRITEANIMDICT_ENTRIES EQU 10

; SpriteAnimSeqData indexes (see data/sprite_anims/sequences.asm)
	const_def
	const SPRITE_ANIM_INDEX_PARTY_MON                 ; 00
	const SPRITE_ANIM_INDEX_GS_INTRO_BUBBLE           ; 01
	const SPRITE_ANIM_INDEX_GS_INTRO_SHELLDER         ; 02
	const SPRITE_ANIM_INDEX_GS_INTRO_MAGIKARP         ; 03
	const SPRITE_ANIM_INDEX_UNUSED_INTRO_AERODACTYL   ; 04
	const SPRITE_ANIM_INDEX_GS_INTRO_LAPRAS           ; 05
	const SPRITE_ANIM_INDEX_GS_INTRO_NOTE             ; 06
	const SPRITE_ANIM_INDEX_GS_INTRO_INVISIBLE_NOTE   ; 07
	const SPRITE_ANIM_INDEX_GS_INTRO_JIGGLYPUFF       ; 08
	const SPRITE_ANIM_INDEX_GS_INTRO_PIKACHU          ; 09
	const SPRITE_ANIM_INDEX_GS_INTRO_PIKACHU_TAIL     ; 0a
	const SPRITE_ANIM_INDEX_GS_INTRO_FIREBALL         ; 0b
	const SPRITE_ANIM_INDEX_GS_INTRO_CHIKORITA        ; 0c
	const SPRITE_ANIM_INDEX_GS_INTRO_CYNDAQUIL        ; 0d
	const SPRITE_ANIM_INDEX_GS_INTRO_TOTODILE         ; 0e
	const SPRITE_ANIM_INDEX_GS_TITLE_TRAIL            ; 0f
	const SPRITE_ANIM_INDEX_UNUSED_PIKACHU            ; 10
	const SPRITE_ANIM_INDEX_UNUSED_PIKACHU_TAIL       ; 11
	const SPRITE_ANIM_INDEX_UNUSED_NOTE               ; 12
	const SPRITE_ANIM_INDEX_UNUSED_JIGGLYPUFF         ; 13
	const SPRITE_ANIM_INDEX_NAMING_SCREEN_CURSOR      ; 14
	const SPRITE_ANIM_INDEX_GAMEFREAK_LOGO            ; 15
	const SPRITE_ANIM_INDEX_GS_GAMEFREAK_LOGO_STAR    ; 16
	const SPRITE_ANIM_INDEX_GS_GAMEFREAK_LOGO_SPARKLE ; 17
	const SPRITE_ANIM_INDEX_SLOTS_GOLEM               ; 18
	const SPRITE_ANIM_INDEX_SLOTS_CHANSEY             ; 19
	const SPRITE_ANIM_INDEX_SLOTS_EGG                 ; 1a
	const SPRITE_ANIM_INDEX_COMPOSE_MAIL_CURSOR       ; 1b
	const SPRITE_ANIM_INDEX_RED_WALK                  ; 1c
	const SPRITE_ANIM_INDEX_UNUSED_CURSOR             ; 1d
	const SPRITE_ANIM_INDEX_MEMORY_GAME_CURSOR        ; 1e
	const SPRITE_ANIM_INDEX_POKEGEAR_ARROW            ; 1f
	const SPRITE_ANIM_INDEX_TRADE_POKE_BALL           ; 20
	const SPRITE_ANIM_INDEX_TRADE_POOF                ; 21
	const SPRITE_ANIM_INDEX_TRADE_TUBE_BULGE          ; 22
	const SPRITE_ANIM_INDEX_TRADEMON_ICON             ; 23
	const SPRITE_ANIM_INDEX_TRADEMON_BUBBLE           ; 24
	const SPRITE_ANIM_INDEX_EVOLUTION_BALL_OF_LIGHT   ; 25
	const SPRITE_ANIM_INDEX_RADIO_TUNING_KNOB         ; 26
	const SPRITE_ANIM_INDEX_MAGNET_TRAIN_RED          ; 27
	const SPRITE_ANIM_INDEX_LEAF                      ; 28
	const SPRITE_ANIM_INDEX_CUT_TREE                  ; 29
	const SPRITE_ANIM_INDEX_FLY_LEAF                  ; 2a
	const SPRITE_ANIM_INDEX_EGG_CRACK                 ; 2b
	const SPRITE_ANIM_INDEX_GS_INTRO_HO_OH_LUGIA      ; 2c
	const SPRITE_ANIM_INDEX_HEADBUTT                  ; 2d
	const SPRITE_ANIM_INDEX_EGG_HATCH                 ; 2e
NUM_SPRITE_ANIM_INDEXES EQU const_value

; DoAnimFrame.Jumptable indexes (see engine/gfx/sprite_anims.asm)
	const_def
	const SPRITE_ANIM_SEQ_NULL                        ; 00
	const SPRITE_ANIM_SEQ_PARTY_MON                   ; 01
	const SPRITE_ANIM_SEQ_PARTY_MON_SWITCH            ; 02
	const SPRITE_ANIM_SEQ_PARTY_MON_SELECTED          ; 03
	const SPRITE_ANIM_SEQ_GS_INTRO_BUBBLE             ; 04
	const SPRITE_ANIM_SEQ_GS_INTRO_SHELLDER           ; 05
	const SPRITE_ANIM_SEQ_GS_INTRO_MAGIKARP           ; 06
	const SPRITE_ANIM_SEQ_UNUSED_INTRO_AERODACTYL     ; 07
	const SPRITE_ANIM_SEQ_GS_INTRO_LAPRAS             ; 08
	const SPRITE_ANIM_SEQ_GS_INTRO_NOTE               ; 09
	const SPRITE_ANIM_SEQ_GS_INTRO_JIGGLYPUFF         ; 0a
	const SPRITE_ANIM_SEQ_GS_INTRO_PIKACHU            ; 0b
	const SPRITE_ANIM_SEQ_GS_INTRO_PIKACHU_TAIL       ; 0c
	const SPRITE_ANIM_SEQ_GS_INTRO_FIREBALL           ; 0d
	const SPRITE_ANIM_SEQ_GS_INTRO_CHIKORITA_TOTODILE ; 0e
	const SPRITE_ANIM_SEQ_GS_INTRO_CYNDAQUIL          ; 0f
	const SPRITE_ANIM_SEQ_GS_TITLE_TRAIL              ; 10
	const SPRITE_ANIM_SEQ_UNUSED_PIKACHU              ; 11
	const SPRITE_ANIM_SEQ_UNUSED_PIKACHU_TAIL         ; 12
	const SPRITE_ANIM_SEQ_UNUSED_NOTE                 ; 13
	const SPRITE_ANIM_SEQ_UNUSED_JIGGLYPUFF           ; 14
	const SPRITE_ANIM_SEQ_NAMING_SCREEN_CURSOR        ; 15
	const SPRITE_ANIM_SEQ_GAMEFREAK_LOGO              ; 16
	const SPRITE_ANIM_SEQ_GS_GAMEFREAK_LOGO_STAR      ; 17
	const SPRITE_ANIM_SEQ_GS_GAMEFREAK_LOGO_SPARKLE   ; 18
	const SPRITE_ANIM_SEQ_SLOTS_GOLEM                 ; 19
	const SPRITE_ANIM_SEQ_SLOTS_CHANSEY               ; 1a
	const SPRITE_ANIM_SEQ_SLOTS_EGG                   ; 1b
	const SPRITE_ANIM_SEQ_MAIL_CURSOR                 ; 1c
	const SPRITE_ANIM_SEQ_UNUSED_CURSOR               ; 1d
	const SPRITE_ANIM_SEQ_MEMORY_GAME_CURSOR          ; 1e
	const SPRITE_ANIM_SEQ_POKEGEAR_ARROW              ; 1f
	const SPRITE_ANIM_SEQ_TRADE_POKE_BALL             ; 20
	const SPRITE_ANIM_SEQ_TRADE_TUBE_BULGE            ; 21
	const SPRITE_ANIM_SEQ_TRADEMON_IN_TUBE            ; 22
	const SPRITE_ANIM_SEQ_REVEAL_NEW_MON              ; 23
	const SPRITE_ANIM_SEQ_RADIO_TUNING_KNOB           ; 24
	const SPRITE_ANIM_SEQ_CUT_LEAVES                  ; 25
	const SPRITE_ANIM_SEQ_FLY_FROM                    ; 26
	const SPRITE_ANIM_SEQ_FLY_LEAF                    ; 27
	const SPRITE_ANIM_SEQ_FLY_TO                      ; 28
	const SPRITE_ANIM_SEQ_GS_INTRO_HO_OH_LUGIA        ; 29
NUM_SPRITE_ANIM_SEQS EQU const_value

; SpriteAnimFrameData indexes (see data/sprite_anims/framesets.asm)
	const_def
	const SPRITE_ANIM_FRAMESET_00                        ; 00
	const SPRITE_ANIM_FRAMESET_PARTY_MON                 ; 01
	const SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_MAIL       ; 02
	const SPRITE_ANIM_FRAMESET_PARTY_MON_WITH_ITEM       ; 03
	const SPRITE_ANIM_FRAMESET_GS_INTRO_BUBBLE           ; 04
	const SPRITE_ANIM_FRAMESET_GS_INTRO_SHELLDER         ; 05
	const SPRITE_ANIM_FRAMESET_GS_INTRO_MAGIKARP         ; 06
	const SPRITE_ANIM_FRAMESET_UNUSED_INTRO_AERODACTYL   ; 07
	const SPRITE_ANIM_FRAMESET_GS_INTRO_LAPRAS           ; 08
	const SPRITE_ANIM_FRAMESET_GS_INTRO_NOTE             ; 09
	const SPRITE_ANIM_FRAMESET_GS_INTRO_INVISIBLE_NOTE   ; 0a
	const SPRITE_ANIM_FRAMESET_GS_INTRO_JIGGLYPUFF       ; 0b
	const SPRITE_ANIM_FRAMESET_GS_INTRO_JIGGLYPUFF_2     ; 0c
	const SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU          ; 0d
	const SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU_2        ; 0e
	const SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU_3        ; 0f
	const SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU_TAIL     ; 10
	const SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU_TAIL_2   ; 11
	const SPRITE_ANIM_FRAMESET_GS_INTRO_FIREBALL         ; 12
	const SPRITE_ANIM_FRAMESET_GS_INTRO_CHIKORITA        ; 13
	const SPRITE_ANIM_FRAMESET_GS_INTRO_CYNDAQUIL        ; 14
	const SPRITE_ANIM_FRAMESET_GS_INTRO_TOTODILE         ; 15
	const SPRITE_ANIM_FRAMESET_GS_TITLE_TRAIL            ; 16
	const SPRITE_ANIM_FRAMESET_UNUSED_PIKACHU            ; 17
	const SPRITE_ANIM_FRAMESET_UNUSED_PIKACHU_2          ; 18
	const SPRITE_ANIM_FRAMESET_UNUSED_PIKACHU_3          ; 19
	const SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR         ; 1a
	const SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR_BIG     ; 1b
	const SPRITE_ANIM_FRAMESET_GAMEFREAK_LOGO            ; 1c
	const SPRITE_ANIM_FRAMESET_GS_GAMEFREAK_LOGO_STAR    ; 1d
	const SPRITE_ANIM_FRAMESET_GS_GAMEFREAK_LOGO_SPARKLE ; 1e
	const SPRITE_ANIM_FRAMESET_SLOTS_GOLEM               ; 1f
	const SPRITE_ANIM_FRAMESET_SLOTS_CHANSEY             ; 20
	const SPRITE_ANIM_FRAMESET_SLOTS_CHANSEY_2           ; 21
	const SPRITE_ANIM_FRAMESET_SLOTS_EGG                 ; 22
	const SPRITE_ANIM_FRAMESET_RED_WALK                  ; 23
	const SPRITE_ANIM_FRAMESET_STILL_CURSOR              ; 24
	const SPRITE_ANIM_FRAMESET_TRADE_POKE_BALL           ; 25
	const SPRITE_ANIM_FRAMESET_TRADE_POKE_BALL_WOBBLE    ; 26
	const SPRITE_ANIM_FRAMESET_TRADE_POOF                ; 27
	const SPRITE_ANIM_FRAMESET_TRADE_TUBE_BULGE          ; 28
	const SPRITE_ANIM_FRAMESET_TRADEMON_ICON             ; 29
	const SPRITE_ANIM_FRAMESET_TRADEMON_BUBBLE           ; 2a
	const SPRITE_ANIM_FRAMESET_EVOLUTION_BALL_OF_LIGHT   ; 2b
	const SPRITE_ANIM_FRAMESET_RADIO_TUNING_KNOB         ; 2c
	const SPRITE_ANIM_FRAMESET_MAGNET_TRAIN_RED          ; 2d
	const SPRITE_ANIM_FRAMESET_UNUSED_2E                 ; 2e
	const SPRITE_ANIM_FRAMESET_LEAF                      ; 2f
	const SPRITE_ANIM_FRAMESET_CUT_TREE                  ; 30
	const SPRITE_ANIM_FRAMESET_EGG_CRACK                 ; 31
	const SPRITE_ANIM_FRAMESET_EGG_HATCH_1               ; 32
	const SPRITE_ANIM_FRAMESET_EGG_HATCH_2               ; 33
	const SPRITE_ANIM_FRAMESET_EGG_HATCH_3               ; 34
	const SPRITE_ANIM_FRAMESET_EGG_HATCH_4               ; 35
	const SPRITE_ANIM_FRAMESET_GS_INTRO_HO_OH_LUGIA      ; 36
	const SPRITE_ANIM_FRAMESET_HEADBUTT                  ; 37
NUM_SPRITE_ANIM_FRAMESETS EQU const_value

; SpriteAnimOAMData indexes (see data/sprite_anims/oam.asm)
	const_def
	const SPRITE_ANIM_OAMSET_RED_WALK_1                  ; 00
	const SPRITE_ANIM_OAMSET_RED_WALK_2                  ; 01
	const SPRITE_ANIM_OAMSET_GS_INTRO_BUBBLE_1           ; 02
	const SPRITE_ANIM_OAMSET_GS_INTRO_BUBBLE_2           ; 03
	const SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_1         ; 04
	const SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_2         ; 05
	const SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_1         ; 06
	const SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_2         ; 07
	const SPRITE_ANIM_OAMSET_UNUSED_INTRO_AERODACTYL     ; 08
	const SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_1           ; 09
	const SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_2           ; 0a
	const SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_3           ; 0b
	const SPRITE_ANIM_OAMSET_GS_INTRO_NOTE               ; 0c
	const SPRITE_ANIM_OAMSET_GS_INTRO_INVISIBLE_NOTE     ; 0d
	const SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_1       ; 0e
	const SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_2       ; 0f
	const SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_3       ; 10
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_1          ; 11
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_2          ; 12
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_3          ; 13
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_4          ; 14
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_1     ; 15
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_2     ; 16
	const SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_3     ; 17
	const SPRITE_ANIM_OAMSET_GS_INTRO_SMALL_FIREBALL     ; 18
	const SPRITE_ANIM_OAMSET_GS_INTRO_MED_FIREBALL       ; 19
	const SPRITE_ANIM_OAMSET_GS_INTRO_BIG_FIREBALL       ; 1a
	const SPRITE_ANIM_OAMSET_GS_INTRO_CHIKORITA          ; 1b
	const SPRITE_ANIM_OAMSET_GS_INTRO_CYNDAQUIL          ; 1c
	const SPRITE_ANIM_OAMSET_GS_INTRO_TOTODILE           ; 1d
	const SPRITE_ANIM_OAMSET_GS_TITLE_TRAIL_1            ; 1e
	const SPRITE_ANIM_OAMSET_GS_TITLE_TRAIL_2            ; 1f
	const SPRITE_ANIM_OAMSET_TEXT_ENTRY_CURSOR           ; 20
	const SPRITE_ANIM_OAMSET_TEXT_ENTRY_CURSOR_BIG       ; 21
	const SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO           ; 22
	const SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_STAR      ; 23
	const SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_1 ; 24
	const SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_2 ; 25
	const SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_3 ; 26
	const SPRITE_ANIM_OAMSET_SLOTS_GOLEM_1               ; 27
	const SPRITE_ANIM_OAMSET_SLOTS_GOLEM_2               ; 28
	const SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_1             ; 29
	const SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_2             ; 2a
	const SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_3             ; 2b
	const SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_4             ; 2c
	const SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_5             ; 2d
	const SPRITE_ANIM_OAMSET_SLOTS_EGG                   ; 2e
	const SPRITE_ANIM_OAMSET_STILL_CURSOR                ; 2f
	const SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1           ; 30
	const SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2           ; 31
	const SPRITE_ANIM_OAMSET_TRADE_POOF_1                ; 32
	const SPRITE_ANIM_OAMSET_TRADE_POOF_2                ; 33
	const SPRITE_ANIM_OAMSET_TRADE_POOF_3                ; 34
	const SPRITE_ANIM_OAMSET_TRADE_TUBE_BULGE_1          ; 35
	const SPRITE_ANIM_OAMSET_TRADE_TUBE_BULGE_2          ; 36
	const SPRITE_ANIM_OAMSET_TRADEMON_ICON_1             ; 37
	const SPRITE_ANIM_OAMSET_TRADEMON_ICON_2             ; 38
	const SPRITE_ANIM_OAMSET_TRADEMON_BUBBLE             ; 39
	const SPRITE_ANIM_OAMSET_EVOLUTION_BALL_OF_LIGHT_1   ; 3a
	const SPRITE_ANIM_OAMSET_EVOLUTION_BALL_OF_LIGHT_2   ; 3b
	const SPRITE_ANIM_OAMSET_RADIO_TUNING_KNOB           ; 3c
	const SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_1       ; 3d
	const SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_2       ; 3e
	const SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_1       ; 3f
	const SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_2       ; 40
	const SPRITE_ANIM_OAMSET_MAGNET_TRAIN_RED_1          ; 41
	const SPRITE_ANIM_OAMSET_MAGNET_TRAIN_RED_2          ; 42
	const SPRITE_ANIM_OAMSET_UNUSED_43                   ; 43
	const SPRITE_ANIM_OAMSET_UNUSED_44                   ; 44
	const SPRITE_ANIM_OAMSET_UNUSED_45                   ; 45
	const SPRITE_ANIM_OAMSET_UNUSED_46                   ; 46
	const SPRITE_ANIM_OAMSET_UNUSED_47                   ; 47
	const SPRITE_ANIM_OAMSET_UNUSED_48                   ; 48
	const SPRITE_ANIM_OAMSET_UNUSED_49                   ; 49
	const SPRITE_ANIM_OAMSET_UNUSED_4A                   ; 4a
	const SPRITE_ANIM_OAMSET_UNUSED_4B                   ; 4b
	const SPRITE_ANIM_OAMSET_UNUSED_4C                   ; 4c
	const SPRITE_ANIM_OAMSET_UNUSED_4D                   ; 4d
	const SPRITE_ANIM_OAMSET_UNUSED_4E                   ; 4e
	const SPRITE_ANIM_OAMSET_LEAF                        ; 4f
	const SPRITE_ANIM_OAMSET_TREE_1                      ; 50
	const SPRITE_ANIM_OAMSET_CUT_TREE_2                  ; 51
	const SPRITE_ANIM_OAMSET_CUT_TREE_3                  ; 52
	const SPRITE_ANIM_OAMSET_CUT_TREE_4                  ; 53
	const SPRITE_ANIM_OAMSET_EGG_CRACK                   ; 54
	const SPRITE_ANIM_OAMSET_EGG_HATCH                   ; 55
	const SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_1      ; 56
	const SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_2      ; 57
	const SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_3      ; 58
	const SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_4      ; 59
	const SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_5      ; 5a
	const SPRITE_ANIM_OAMSET_HEADBUTT_TREE_2             ; 5b
NUM_SPRITE_ANIM_OAMSETS EQU const_value
