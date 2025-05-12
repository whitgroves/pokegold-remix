BattleCommand_HappinessPower:
	ld hl, wBattleMonHappiness
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyMonHappiness
.ok
	ld a, [hl]
	ld d, a
	sra d
	ret
