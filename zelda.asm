;================================================================================
; Spawn Zelda (or not)
;--------------------------------------------------------------------------------
SpawnZelda:
    LDA.l $7EF3CC : CMP #$08 : BEQ +
		CLC : RTL
	+
	SEC
RTL
;--------------------------------------------------------------------------------
EndRainState:
	LDA $7EF3C5 : CMP.b #$02 : !BGE + ; skip if past escape already
		LDA.b #$02 : STA $7EF3C5 ; end rain state
	+
RTL
;--------------------------------------------------------------------------------