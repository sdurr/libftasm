%define MACH_SYSCALL(nb)        0x2000000 | nb
%define STDOUT                          1
%define READ                            3
%define WRITE                           4

section .data
string:
	                .buffer db      0, 0

	section .text
	        global                  _ft_cat

_ft_cat:
start:
	                test            rdi,            0x80000000
	                jne                     end
	                push            rdi
	                je                      read
read:
	                pop                     rdi
	                mov                     rdx,            1
	                lea                     rsi,            [rel string.buffer]
	                mov                     rax,            MACH_SYSCALL(READ)
	                syscall
	                cmp                     rax,            0
	                je                      end
	                push            rdi
	                jmp                     write
write:
	                mov                     rdi,            STDOUT
	                mov                     rdx,            1
	                lea                     rsi,            [rel string.buffer]
	                mov                     rax,            MACH_SYSCALL(WRITE)
	                syscall
	                jmp                     read
end:
	                ret