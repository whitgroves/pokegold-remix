; moved weather checks for certain battle commands here so interactions can be
; fleshed out without overruning the size of the BattleCommands bank (0x4000)

; checks weather interactions for BattleCommand_FreezeTarget
; updates the value of wEffectFailed (0 = success, 1 = failure)
CheckWeatherFreeze:
    ld a, [wEffectFailed]
	and a               ; nz = fail, register gets overwritten but flag remains set
	ld a, [wBattleWeather]
	jr nz, .rainCheck   ; on fail check for rain
    cp WEATHER_SUN      ; on success check for sun
    jr z, .random       ; in sun, re-roll
    ret                 ; otherwise, move on
.rainCheck
	cp WEATHER_RAIN
	ret nz              ; no rain, no re-roll
.random
    call BattleRandom   ; insert random value (0-255) into register a
    cp 90 percent       ; 90% chance to fail in either scenario
    jr nc, .failure     ; nc = fail, set wEffectFailed and move on
.success
    ld a, 0             ; otherwise clear wEffectFailed before ret
    jr .done
.failure
    ld a, 1
.done
    ld [wEffectFailed], a
    ret

; checks weather interactions for BattleCommand_BurnTarget
; and updates the value of wEffectFailed (0 = success, 1 = failure)
CheckWeatherBurn:
    ld a, [wEffectFailed]
    and a
    ld a, [wBattleWeather]
    jr nz, .sunCheck
    cp WEATHER_RAIN
    jr z, .random
    ret
.sunCheck
    cp WEATHER_SUN
    ret nz
.random
    call BattleRandom
    cp 90 percent
    jr nc, .failure
.success
    ld a, 0
    jr .done
.failure
    ld a, 1
.done
    ld [wEffectFailed], a
    ret