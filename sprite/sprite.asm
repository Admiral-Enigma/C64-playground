    processor	    6502
    org	    $1000

check:
    jsr $ffe1
    beq end



    lda #$80
    sta $07f8
    lda #$01
    sta $d015

    lda #$80 ;128 pixels
    sta $d000 ;X
    sta $d001 ;Y

    jmp check

end:
    rts


    ;LOADING ASSETS
    org $2000
    incbin "customsprite.prg"
