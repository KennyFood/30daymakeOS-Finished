[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[BITS 32]
[FILE "api031.nas"]

		GLOBAL	_api_writer

[SECTION .text]

_api_writer:	; void api_writer();
		MOV		EDX,31
		INT		0x40
		RET
