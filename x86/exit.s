.data
.text
.global _start
_start:

xor %eax, %eax 
inc %eax #eax = 1 (syscall number for exit)
xor %ebx, %ebx #first argument... exit(0)
int $0x80

