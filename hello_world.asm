; hello_world.asm
; printf SYS_read | gcc -include sys/syscall.h -E -
; /usr/include/x86_64-linux-gnu/asm/unistd.h
; /usr/include/x86_64-linux-gnu/asm/unistd_32.h
;#define __NR_exit 1
;#define __NR_fork 2
;#define __NR_read 3
;#define __NR_write 4 => chamada de sistema para escrita 
;#define __NR_open 5

global _start

section .text:

_start:
	mov eax, 0x4		; usa a write chamada de sistema (syscall)
	mov ebx, 1 		; usa stdout como fd (file description)
	mov ecx, message	; usa a mensagem como o buffer
	mov edx, message_lenght ; e supli o tamanho
	int 0x80 ; int => interrupt => interromper 0x80 identificador para executar invoke the syscall
	
	; saida com sucesso retorna 0
	mov eax, 0x1
	mov ebx, 0   ; retorna 0
	int 0x80

section .data:
	message: db "Hello World!", 0xA
	message_lenght: equ $-message
