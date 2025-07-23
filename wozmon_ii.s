

RESET:                  ; FF00
        NOP
        NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP NOP
NOTCR:                  ; FF0F
        CMP #$5F                ; Backspace? (Actually '_').
        BEQ BACKSPACE
        CMP #$1B                ; ESC?
        BEQ ESCAPE
        INY                     ; Advance text index.
        BPL NEXTCHAR            ; Auto ESC if > 127.
ESCAPE:                 ; FF1A
        LDA #$5C                ; Load '\' into accumulator.
        JSR ECHO                ; Jump to subroutine ECHO to print '\'.
GETLINE:                ; FF1F
        LDA #$0D                ; Load CR into accumulator.
        JSR ECHO                ; Jump to subroutine ECHO to print CR.
        LDY #$01                ; Initialize text index.
BACKSPACE:              ; FF26
        DEY
        BMI GETLINE
NEXTCHAR:               ; FF29
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP
SETSTOR:                ; FF40
        NOP
SETMODE:                ; FF41
        NOP NOP
BLSKIP:                 ; FF43
        NOP
NEXTITEM:               ; FF44
        NOP NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
NEXTHEX:                ; FF5F
        NOP NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
DIG:                    ; FF6E
        NOP
        NOP
        NOP
        NOP
        NOP NOP
HEXSHIFT:               ; FF74
        NOP
        NOP NOP
        NOP NOP
        NOP
        NOP NOP
        NOP
        NOP NOP
NOTHEX:                 ; FF7F
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
TONEXTITEM:             ; FF91
        NOP NOP NOP
RUN:                    ; FF94
        NOP NOP NOP
NOTSTOR:                ; FF97
        NOP NOP
        NOP NOP
SETADR:                 ; FF9B
        NOP NOP
        NOP NOP
        NOP NOP
        NOP
        NOP NOP
NXTPRNT:                ; FFA4
        NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
PRDATA:                 ; FFBA
        NOP NOP
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
XAMNEXT:                ; FFC4
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
MOD8CHK:                ; FFD6
        NOP NOP
        NOP NOP
        NOP NOP
PRBYTE:                 ; FFDC
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP NOP NOP
        NOP
PRHEX:                  ; FFE5
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP
ECHO:                   ; FFEF
        NOP NOP NOP
        NOP NOP
        NOP NOP NOP
        NOP

        NOP NOP
        NOP NOP
        NOP NOP
        NOP NOP