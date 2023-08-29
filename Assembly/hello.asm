; Author: Marcel Barreto
; Description: Works in Windows WSL Ububtu
; Date: 28/08/2023
;

global _start

section .text

_start:
        mov rax, 0x1                    ; informa para o sistema que havera escrita
        mov rdi, 0x1                    ; informa a saida
        mov rsi, msg                    ; buffer armazenando a mensagem
        mov rdx, msglength              ; armazena o tamanho da mensagem
        SYSCALL                         ; chama o syscall para executar a escrita

        mov rax, 0x3C                   ;saida do código
        mov rdi, 0x0                    ;código de erro 0
        SYSCALL

section .data
        msg: db "Hello World", 0xA
        msglength: equ $ - msg