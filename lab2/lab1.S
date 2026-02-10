.syntax unified
.cpu cortex-m4
.thumb

.global lab1

.text
lab1:
    PUSH {R4, R5, LR}

    AND R4, R0, R1
    LSR R4, R4, #1

    MOV R0, R2
    BL  factorial

    ADD R0, R4, R0

    POP {R4, R5, PC}

factorial:
    MOV R1, R0
    MOV R0, #1
fact_loop:
    CMP R1, #1
    ITT GT
    MULGT R0, R0, R1
    SUBGT R1, R1, #1
    BGT fact_loop
    BX LR
