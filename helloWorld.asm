global _start


section text:
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, message
	mov edx, 13
	int 0x80

	mov eax, 1
	mov ebx, 60
	int 0x80

section data:
	message: db "Hello world!", 0x0A

