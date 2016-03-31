.data
.text
 .global _start

_start:
xor %eax, %eax		#zera %eax
push %eax		#coloca nullbyte na pilha
push $0x68732F2F	#coloca string /bin//sh na pilha
push $0x6E69622F	#
mov $0xb, %al		#syscall execve para %al
mov %esp, %ebx		#ponteiro da string para %ebx
xor %ecx, %ecx		#zera %ecx
xor %edx, %edx		#zera %edx
int $0x80		#chama o kernel
xor %eax, %eax		#exit(0);
xor %ebx, %ebx		#
inc %eax		#
int $0x80		#

