[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[BITS 32]
[FILE "api029.nas"]

		GLOBAL	_api_addr2

[SECTION .text]

_api_addr2:	; void api_addr2(int gdt,int addr);
		MOV		EDX,29
		MOV		EAX,[ESP+4]		; 
		MOV		EBP,[ESP+8]
		SGDT	[EAX]
		SLDT	CX
		MOV		BX,DS
		INT		0x40
		RET
