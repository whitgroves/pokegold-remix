; TrainerClassAttributes struct members (see data/trainers/attributes.asm)
rsreset
DEF TRNATTR_ITEM1           rb ; 0
DEF TRNATTR_ITEM2           rb ; 1
DEF TRNATTR_BASEMONEY       rb ; 2
DEF TRNATTR_AI_MOVE_WEIGHTS rw ; 3
DEF TRNATTR_AI_ITEM_SWITCH  rw ; 5
DEF NUM_TRAINER_ATTRIBUTES EQU _RS

; TRNATTR_AI_MOVE_WEIGHTS bit flags (wEnemyTrainerAIFlags)
; AIScoringPointers indexes (see engine/battle/ai/move.asm & engine/battle/ai/scoring.asm)
	const_def
	shift_const AI_BASIC 		; don't use moves that will fail b/c of game state (e.g., hypnosis on a PRZ'd mon)
	shift_const AI_SETUP 		; prefer stat modding moves on turn 1, then avoid after
	shift_const AI_TYPES 		; respect the type chart
	shift_const AI_OFFENSIVE	; ignore non-damaging moves
	shift_const AI_SMART		; context-specific; includes checks for unique effects/interactions like curse or destiny bond
	shift_const AI_OPPORTUNIST	; don't stall when HP is low
	shift_const AI_AGGRESSIVE	; use whatever does the most damage
	shift_const AI_CAUTIOUS		; discourage moves w/ residual effects, like petal dance or outrage
	shift_const AI_STATUS		; respect the type chart with respect to status (e.g., don't toxic a poison mon)
	shift_const AI_RISKY		; use any move that will KO, regardless of drawbacks
DEF NO_AI EQU 0

; TRNATTR_AI_ITEM_SWITCH bit flags (see engine/battle/ai/items.asm -> AI_SwitchOrTryItem) -- TODO: review & rewrite
	const_def
	const SWITCH_OFTEN_F     ; 0
	const SWITCH_RARELY_F    ; 1
	const SWITCH_SOMETIMES_F ; 2
	const_skip               ; 3
	const ALWAYS_USE_F       ; 4
	const UNKNOWN_USE_F      ; 5
	const CONTEXT_USE_F      ; 6

DEF SWITCH_OFTEN       EQU 1 << SWITCH_OFTEN_F
DEF SWITCH_RARELY      EQU 1 << SWITCH_RARELY_F
DEF SWITCH_SOMETIMES   EQU 1 << SWITCH_SOMETIMES_F
DEF ALWAYS_USE         EQU 1 << ALWAYS_USE_F
DEF UNKNOWN_USE        EQU 1 << UNKNOWN_USE_F
DEF CONTEXT_USE        EQU 1 << CONTEXT_USE_F

; TrainerTypes indexes (see engine/battle/read_trainer_party.asm)
	const_def
	const TRAINERTYPE_NORMAL
	const TRAINERTYPE_MOVES
	const TRAINERTYPE_ITEM
	const TRAINERTYPE_ITEM_MOVES ; unused -- TODO: change this
