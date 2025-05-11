BattleCommand_FrustrationPower:
	ld hl, wBattleMonHappiness
	ldh a, [hBattleTurn]
	and a
	jr z, .got_happiness
	ld hl, wEnemyMonHappiness
.got_happiness
	ld a, $ff
	sub [hl]
	ld d, a
	ret
