
;
; @author Ammar Faizi <ammarfaizi2@gmail.com> https://www.facebook.com/ammarfaizi2
; @license MIT
; @version 0.0.1
;

section .bss
    input001 resb 300
    input002 resb 300
    input003 resb 300
    flag_carrier resb 300

section .data
    aa001s db "Enter password: ", 0
    aa001l equ $-aa001s-1
    aa002s db "Enter password 2: ", 0
    aa002l equ $-aa002s-1
    aa003s db "Enter password 3: ", 0
    aa003l equ $-aa003s-1
    aa004s db "Wrong Password!", 10, 0
    aa004l equ $-aa004s-1
    aa005s db "Congratulation, you got the flag: ", 0
    aa005l equ $-aa005s-1

section .text
    global _start

_start:
    call main
    jmp exit
main:
    push rbp
    mov rbp, rsp
    call ask_input001
    test al, al
    je .pwwrong
    call ask_input002
    test al, al
    je .pwwrong
    call ask_input003
    test al, al
    je .pwwrong
.pwtrue:
    mov rdi, aa005s
    mov rsi, aa005l
    call write_out
    jmp .epilogue
.pwwrong:
    mov rdi, aa004s
    mov rsi, aa004l
    call write_out
.epilogue:
    mov rsp, rbp
    pop rbp
    ret

write_out:
    mov rax, 1
    mov r9, rdi
    mov rdx, rsi
    mov rdi, 1
    mov rsi, r9
    syscall
    ret

read_in:
    mov rax, 0
    mov r9, rdi
    mov rdx, rsi
    mov rdi, 0
    mov rsi, r9
    syscall
    ret

ask_input001:
    push rbp
    mov rbp, rsp
    mov rdi, aa001s
    mov rsi, aa001l
    call write_out
    mov rdi, input001
    mov rsi, 299
    call read_in
    cmp rax, 14
    je .pwlentrue
    jmp .pwfalse
.pwlentrue:
    mov byte [input001 + 13], 0
    mov rax, [input001]
    mov rdi, [input001 + 5]

    mov rdx, 0xfcca102851847219
    add rax, rdx
    mov rdx, 0xcc8471929aff0192
    sub rdi, rdx

    mov rdx, 0x67b4c79eca6567e1
    cmp rdi, rdx
    jne .pwfalse
    mov rdx, 0x613383969ae5d76d
    cmp rax, rdx
    jne .pwfalse

.pwtrue:
    mov [input001], rax
    mov [input001 + 8], rdi
    xor rax, rax
    mov al, 1
    jmp .epilogue
.pwfalse:
    xor rax, rax
.epilogue:
    mov rsp, rbp
    pop rbp
    ret

ask_input002:
    push rbp
    mov rbp, rsp
    mov rdi, aa002s
    mov rsi, aa002l
    call write_out
    mov rdi, input002
    mov rsi, 299
    call read_in
    cmp rax, 20
    je .pwlentrue
    jmp .pwfalse
.pwlentrue:
    mov byte [input002 + 19], 0
    mov rax, [input002]
    mov rdi, [input002 + 8]

    mov rdx, 0x00ff192101039100
    sub rax, rdx
    mov rdx, 0x11acd919201cccfb
    add rdi, rdx
    inc rax
    inc rdi
    add rax, 0xcf10
    add rdi, 0xcf10

    mov rdx, 0x8610478e667f1071
    cmp rdi, rdx
    jne .pwfalse
    mov rdx, 0x596f55406c62a763
    cmp rax, rdx
    jne .pwfalse
    cmp byte [input002 + 18], 'n'
    jne .pwfalse
.pwtrue:
    mov [input002], rax
    mov [input002 + 8], rdi
    xor rax, rax
    mov al, 1
    jmp .epilogue
.pwfalse:
    xor rax, rax
.epilogue:
    mov rsp, rbp
    pop rbp
    ret

ask_input003:
    push rbp
    mov rbp, rsp
    mov rdi, aa003s
    mov rsi, aa003l
    call write_out
    mov rdi, input003
    mov rsi, 299
    call read_in
    cmp rax, 16
    je .pwlentrue
    jmp .pwfalse
.pwlentrue:
    mov byte [input003 + 15], 0
    mov rax, [input003]
    mov rdi, [input003 + 8]

    mov rdx, 0x177013ca00101401
    add rax, rdx
    mov rdx, 0x4019210001023912
    add rdi, rdx

    mov rdx, 0x408790697565a787
    cmp rdi, rdx
    jne .pwfalse
    mov rdx, 0x5dd1813761777d45
    cmp rax, rdx
    jne .pwfalse

.pwtrue:
    mov [input003], rax
    mov [input003 + 8], rdi
    xor rax, rax
    mov al, 1
    jmp .epilogue
.pwfalse:
    xor rax, rax
.epilogue:
    mov rsp, rbp
    pop rbp
    ret

exit:
    mov rax, 60
    xor rdi, rdi
    syscall
