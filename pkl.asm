.model small
.code
org 100h
mulai:
jmp proses
vca db 10,13, 'USERNAME : $'
vcal db 10,13, 'PASSWORD : $'
vcal1 db 10,13, 'MAAF KEYWORD YANG ANDA MASUKKAN SALAH $'
vcal2 db 10,13, 'SELAMAT DATANG TUAN$'
vcal3 db 10,13, 'Nama : Muhammad Abu bakar Umar Usman Ali Abdus Salam$'
vcal4 db 10,13, 'Nim : 2200018011$ '
vcal5 db 10,13, 'Kelas : A$'
vcal6 db 10,13, 'Ttg : Timika, 4 Februari 2004$'

proses:
mov ah, 09h
lea dx, vca
int 21h

mov ah, 07h
int 21h

cmp al, 'R'
je ya1
jne tidak1

ya1:
mov ah, 02h
mov dl, 'R'
int 21h

mov ah, 07h
int 21h

cmp al, 'O'
je ya2
jne tidak2

tidak1:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya2:
mov ah, 02h
mov dl, 'O'
int 21h

mov ah, 07h
int 21h

cmp al, 'O'
je ya3
jne tidak3

tidak2:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya3:
mov ah, 02h
mov dl, 'O'
int 21h

mov ah, 07h
int 21h

cmp al, 'T'
je ya4
jne tidak4

tidak3:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya4:
mov ah, 02h
mov dl, 'T'
int 21h
;mov ah, 09h
;lea dx, vcal2
;int 21h
jmp proses1

tidak4:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

;;;;;;;;;;;;;;;;;;;;;PROSES1;;;;;;;;;;;;;;;;;;;;;;;;;;;

proses1:
mov ah, 09h
lea dx, vcal
int 21h

mov ah, 07h
int 21h

cmp al, 'A'
je ya5
jne tidak5

ya5:
mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 07h
int 21h

cmp al, 'N'
je ya6
jne tidak6

tidak5:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya6:
mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 07h
int 21h

cmp al, 'D'
je ya7
jne tidak7

tidak6:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya7:
mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 07h
int 21h

cmp al, 'A'
je ya8
jne tidak8

tidak7:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses

ya8:
mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 09h
lea dx, vcal2
int 21h  

mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 09h
lea dx, vcal3
int 21h

mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 09h
lea dx, vcal4
int 21h

mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 09h
lea dx, vcal5
int 21h


mov ah, 02h
mov dl, 2Ah
int 21h

mov ah, 09h
lea dx, vcal6
int 21h

int 20h

tidak8:
mov ah, 09h
lea dx, vcal1
int 21h
jmp proses


end mulai
