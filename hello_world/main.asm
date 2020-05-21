section .data
msg db 'Hello, World!', 0xa ;содержимое строки вывода
len equ $ - msg     ;длина строки

section .text   ;секция кода программы
    global _start   ;необходимо для линкера

_start:     ;сообщает линкеру стартовую точку
    mov edx, len    ;длина строки
    mov ecx, msg    ;строка
    mov ebx, 1  ;дескриптор файла (stdout)
    mov eax, 4  ;номер системного вызова (sys_write)
    int 0x80    ;вызов ядра

    mov eax, 1  ;номер системного вызова (sys_exit)
    int 0x80    ;вызов ядра

