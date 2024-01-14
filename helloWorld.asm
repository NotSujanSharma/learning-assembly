; EVerything after ; is comment
global _start


section text:
_start:
	mov eax, 4 ; sys_write
	mov ebx, 1 ; stdout
	mov ecx, message ; pointer to message
	mov edx, 13 ; length of message 'hello world!\n'
	int 0x80 ; calling the kernal

	mov eax, 1 ; sys_exit
	mov ebx, 60 ; error code 60
	int 0x80 ; calling the kernal

section data:
	message: db "Hello world!", 0x0A ; hello world message
