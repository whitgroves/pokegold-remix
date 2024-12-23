DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

; FISHGROUP_SHORE -- "default" group; assigned to any map not listed for other groups
; Notable Routes --> Cherrygrove, Olivine, Route 34
.Shore_Old:
	db  70 percent + 1, KRABBY,   	10
	db  85 percent + 1, STARYU,   	10
	db 100 percent,     CORSOLA,    10
.Shore_Good:
	db  35 percent,     KRABBY,     20
	db  70 percent,     STARYU,     20
	db  90 percent + 1, CORSOLA,    20
	db 100 percent,     SHELLDER,   20
.Shore_Super:
	db  40 percent,     KINGLER,    40
	db  70 percent,     STARYU,     40
	db  90 percent + 1, CORSOLA,    40
	db 100 percent,     SHELLDER,   40

; FISHGROUP_OCEAN -- Route 41, Route 26, Route 27, New Bark, Route 20, Route 21
;					 Cinnabar, Vermilion, Pallet, Vermilion Port, Route 13, Route 12
.Ocean_Old:
	db  70 percent + 1, TENTACOOL,  10
	db  85 percent + 1, GOLDEEN,    10
	db 100 percent,     SHELLDER,   10
.Ocean_Good:
	db  35 percent,     TENTACOOL,  20
	db  70 percent,     GOLDEEN,    20
	db  90 percent + 1, SHELLDER,   20
	db 100 percent,     STARYU,	    20
.Ocean_Super:
	db  40 percent,     TENTACRUEL, 40
	db  70 percent,     SEAKING,    40
	db  90 percent + 1, SHELLDER,   40
	db 100 percent,     STARYU,	    40

; misnomer, imo -- s/b FISHGROUP_CAVE
; FISHGROUP_LAKE -- Union Cave, Slowpoke Well, Mt Mortar, Silver Cave, Dark Cave, 
;					Route 4, Route 9, Route 10, Route 24, Route 25
.Lake_Old:
	db  70 percent + 1, WOOPER,     10
	db  85 percent + 1, MARILL,     10
	db 100 percent,     CHINCHOU,   10
.Lake_Good:
	db  35 percent,     QUAGSIRE,   20
	db  70 percent,     AZUMARILL,  20
	db  90 percent + 1, CHINCHOU,   20
	db 100 percent,     SHUCKLE,	20
.Lake_Super:
	db  40 percent,     QUAGSIRE,   40
	db  70 percent,     AZUMARILL,  40
	db  90 percent + 1, LANTURN,    40
	db 100 percent,     SHUCKLE,	40

; FISHGROUP_POND -- Alph, Ilex, Ecruteak, Route 43, Route 35, Violet, Route 44, Route 42,
;					Route 6, Route 28, Mt Silver (Outside), Route 22, Viridian, Route 30, Route 31
.Pond_Old:
	db  70 percent + 1, POLIWAG,    10
	db  85 percent + 1, MARILL,     10
	db 100 percent,     CHINCHOU,   10
.Pond_Good:
	db  35 percent,     POLIWAG,    20
	db  70 percent,     AZUMARILL,  20
	db  90 percent + 1, CHINCHOU,   20
	db 100 percent,     QUAGSIRE,	20
.Pond_Super:
	db  40 percent,     POLIWHIRL,  40
	db  70 percent,     AZUMARILL,  40
	db  90 percent + 1, LANTURN,    40
	db 100 percent,     QUAGSIRE,	40

; FISHGROUP_DRATINI -- Ice Path, Dragons' Den, Blackthorn
.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, HORSEA,     10
	db 100 percent,     CHINCHOU,   10
.Dratini_Good:
	db  35 percent,     HORSEA,     20
	db  70 percent,     CHINCHOU,   20
	db  90 percent + 1, GYARADOS,   20
	db 100 percent,     DRATINI,	20
.Dratini_Super:
	db  40 percent,     SEADRA,     40
	db  70 percent,     LANTURN,    40
	db  90 percent + 1, GYARADOS,   40
	db 100 percent,     DRAGONAIR,	40

; FISHGROUP_QWILFISH_SWARM -- Route 32 (via FISHSWARM_QWILFISH)
.Qwilfish_Swarm_Old:
	db  70 percent + 1, QWILFISH,   10
	db  85 percent + 1, QWILFISH,   13
	db 100 percent,     QWILFISH,   15
.Qwilfish_Swarm_Good:
	db  35 percent,     QWILFISH,	18
	db  70 percent,     QWILFISH,	20
	db  90 percent + 1, QWILFISH,	23
	db 100 percent,     QUAGSIRE,	25
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   38
	db  70 percent,     QWILFISH,	40
	db  90 percent + 1, QWILFISH,   43
	db 100 percent,     QUAGSIRE,   45

; FISHGROUP_REMORAID_SWARM -- Route 44 (via FISHSWARM_REMORAID)
.Remoraid_Swarm_Old:
	db  70 percent + 1, REMORAID,   10
	db  85 percent + 1, REMORAID,   13
	db 100 percent,     REMORAID,   15
.Remoraid_Swarm_Good:
	db  35 percent,     REMORAID,   18
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   23
	db 100 percent,     MANTINE,	25
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   20
	db  70 percent,     REMORAID,	23
	db  90 percent + 1, OCTILLERY,  43
	db 100 percent,     MANTINE,    45

; FISHGROUP_GYARADOS -- Lake of Rage, Fuchsia City
.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   13
	db 100 percent,     MAGIKARP,   15
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   13
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, MAGIKARP,   18
	db 100 percent,     GYARADOS,	20
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   15
	db  70 percent,     GYARADOS,	20
	db  90 percent + 1, GYARADOS,	30
	db 100 percent,     GYARADOS,	40

; FISHGROUP_DRATINI_2 -- Route 45, Tohjo Falls
.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   13
	db 100 percent,     MAGIKARP,   15
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   13
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, MAGIKARP,   18
	db 100 percent,     DRATINI,	20
.Dratini_2_Super:
	db  40 percent,     MAGIKARP,   18
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, MAGIKARP,   13
	db 100 percent,     DRAGONAIR,	40

; FISHGROUP_WHIRL_ISLANDS -- Whirl Islands (all maps), Cerulean Gym
.WhirlIslands_Old:
	db  70 percent + 1, SHELLDER,   10
	db  85 percent + 1, KRABBY,     10
	db 100 percent,     STARYU,     10
.WhirlIslands_Good:
	db  35 percent,     SHELLDER,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, STARYU,     20
	db 100 percent,     CORSOLA,	20
.WhirlIslands_Super:
	db  40 percent,     SHELLDER,   40
	db  70 percent,     CORSOLA,    40
	db  90 percent + 1, STARYU,     40
	db 100 percent,     OCTILLERY,	40

; FISHGROUP_QWILFISH(_NO_SWARM) -- Route 32
.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, WOOPER,     10
	db  85 percent + 1, QWILFISH,   10
	db 100 percent,     CORSOLA,    10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     QUAGSIRE,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, CORSOLA,    20
	db 100 percent,     KRABBY,		20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     QUAGSIRE,   40
	db  70 percent,     QWILFISH,   40
	db  90 percent + 1, CORSOLA,    40
	db 100 percent,     KINGLER,	40

; FISHGROUP_REMORAID -- Olivine Port, Route 40, Route 41
.Remoraid_Old:
	db  70 percent + 1, TENTACOOL,  10
	db  85 percent + 1, REMORAID,   10
	db 100 percent,     QWILFISH,   10
.Remoraid_Good:
	db  35 percent,     TENTACOOL,  20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     MANTINE,	20
.Remoraid_Super:
	db  40 percent,     TENTACRUEL, 40
	db  70 percent,     OCTILLERY,  40
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     MANTINE,	40

; unused -- TODO: remove
TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  STARYU,     20 ; 0
	db CORSOLA,    40,  STARYU,     40 ; 1
	db SHELLDER,   20,  SHELLDER,   20 ; 2
	db SHELLDER,   40,  SHELLDER,   40 ; 3
	db GOLDEEN,    20,  GOLDEEN,    20 ; 4
	db GOLDEEN,    40,  GOLDEEN,    40 ; 5
	db POLIWAG,    20,  POLIWAG,    20 ; 6
	db POLIWAG,    40,  POLIWAG,    40 ; 7
	db DRATINI,    20,  DRATINI,    20 ; 8
	db DRATINI,    40,  DRATINI,    40 ; 9
	db QWILFISH,   20,  QWILFISH,   20 ; 10
	db QWILFISH,   40,  QWILFISH,   40 ; 11
	db REMORAID,   20,  REMORAID,   20 ; 12
	db REMORAID,   40,  REMORAID,   40 ; 13
	db GYARADOS,   20,  GYARADOS,   20 ; 14
	db GYARADOS,   40,  GYARADOS,   40 ; 15
	db DRATINI,    10,  DRATINI,    10 ; 16
	db DRATINI,    10,  DRATINI,    10 ; 17
	db HORSEA,     20,  HORSEA,     20 ; 18
	db HORSEA,     40,  HORSEA,     40 ; 19
	db TENTACOOL,  20,  TENTACOOL,  20 ; 20
	db TENTACOOL,  40,  TENTACOOL,  40 ; 21
