        processor     6502
        org   $1000

counter = $fa
        lda #$00
        sta counter
        sta $d021
        sta $d020

        sei
loop1:  lda #$fb
loop2:  cmp $d012
        bne loop2

        inc counter
        lda counter
        cmp #$20
        bne out

        lda #$00
        sta counter


        inc $d021
        inc $d020
out:
        lda $d012
loop3:  cmp $d012
        beq loop3
        jmp loop1
