;Credits: Nishat Khan
;Code to generate a square wave pattern

      MVI A,80H
      OUT CSR
LOOP: MVI A,FFH
      OUT PORT B
      CALL DELAY
      MVI A,00H
      OUT PORT B
      CALL DELAY
      JMP LOOP
      HLT


DELAY:  LXI H,FFFFH
LOOP:   DCX H
        MOV A,L
        ORA H
        JNZ LOOP
        RET
