; moved weather checks for certain battle commands here so interactions can be
; fleshed out without overruning the size of the BattleCommands bank (0x4000)

; checks weather interactions for BattleCommand_FreezeTarget
; updates the value of wEffectFailed (0 = success, 1 = failure)
; and sets zero flag accordingly (z = success, nz = failure)
CheckWeatherFreeze:
    ld a, [wEffectFailed]
	and a ; nz = failed, register a gets overwritten but flag remains for weather check
	ld a, [wBattleWeather]
	jr nz, .rainCheck ; on fail in rain, re-roll with 10% chance to freeze
    cp WEATHER_SUN  ; on success in sun, re-roll with 90% chance to fail anyway
    jr nz, .success ; no sun, no re-roll
    jr .random
.rainCheck
	cp WEATHER_RAIN
	jr nz, .failure ; no rain, failure persists
.random
    call BattleRandom
    cp 90 percent
    jr nc, .failure ; 90% fail, 10% success in both scenarios
.success
    ld a, 0
    jr .done
.failure
    ld a, 1
.done
    ld [wEffectFailed], a
    and a
    ret

; checks weather interactions for BattleCommand_BurnTarget
; updates the value of wEffectFailed (0 = success, 1 = failure)
; and sets zero flag accordingly (z = success, nz = failure)
CheckWeatherBurn:
    ld a, [wEffectFailed]
	and a ; nz = failed, register a gets overwritten but flag remains for weather check
	ld a, [wBattleWeather]
	jr nz, .rainCheck ; on fail in sun, re-roll with 10% chance to burn
    cp WEATHER_RAIN ; on success in rain, re-roll with 90% chance to fail anyway
    jr nz, .success ; no rain, no re-roll
    jr .random
.rainCheck
	cp WEATHER_SUN
	jr nz, .failure ; no rain, failure persists
.random
    call BattleRandom
    cp 90 percent
    jr nc, .failure ; 90% fail, 10% success in both scenarios
.success
    ld a, 0
    jr .done
.failure
    ld a, 1
.done
    ld [wEffectFailed], a
    and a
    ret