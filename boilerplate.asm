; ../x16emu -run -prg boilerplate.prg
; acme -f cbm -o boilerplate.prg boilerplate.asm

; BOILERPLATE
*=$0801
!byte $0C,$08
!byte $0A,$00
!byte $9E
!byte $20
!byte $32,$30,$36,$34
!byte $00
!byte $00,$00
*=$0810
;PROGRAM

CHROUT=$FFD2
CHRIN=$FFCF

	ldx	#0
loop:
	lda	.string,x
	beq	end
	jsr	CHROUT
	inx
	jmp	loop
end:
	jsr	CHRIN
	rts

.string !pet	"hello, world!!",13,0
