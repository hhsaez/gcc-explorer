; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC  ?testFunction@@YAHPEAHH@Z
;       COMDAT pdata
pdata   SEGMENT
$pdata$?testFunction@@YAHPEAHH@Z DD imagerel $LN22
        DD      imagerel $LN22+225
        DD      imagerel $unwind$?testFunction@@YAHPEAHH@Z
pdata   ENDS
;       COMDAT xdata
xdata   SEGMENT
$unwind$?testFunction@@YAHPEAHH@Z DD 020501H
        DD      013405H
xdata   ENDS
; Function compile flags: /Ogtpy
;       COMDAT ?testFunction@@YAHPEAHH@Z
_TEXT   SEGMENT
input$ = 8
length$ = 16
testFunction, COMDAT PROC

$LN22:
  mov    QWORD PTR [rsp+8], rbx

  xor    r8d, r8d
  movsxd         rbx, edx
  mov    r9, rcx
  mov    r11d, r8d

  mov    r10d, r8d
  test   edx, edx
  jle    SHORT $LN9@testFuncti
  cmp    ebx, 8
  jb     SHORT $LN9@testFuncti
  mov    eax, ebx
  and    eax, -2147483641     ; ffffffff80000007H
  jge    SHORT $LN19@testFuncti
  dec    eax
  or     eax, -8
  inc    eax
$LN19@testFuncti:
  mov    edx, ebx
  xorps  xmm2, xmm2
  sub    edx, eax
  movdqa         xmm1, xmm2

  npad   8
$LL4@testFuncti:

  movsxd         rax, r10d

  movdqu         xmm0, XMMWORD PTR [r9+rax*4]
  lea    eax, DWORD PTR [r10+4]
  add    r10d, 8
  movsxd         rcx, eax
  paddd  xmm0, xmm2
  movdqa         xmm2, xmm0

  movdqu         xmm0, XMMWORD PTR [r9+rcx*4]
  paddd  xmm0, xmm1
  movdqa         xmm1, xmm0
  cmp    r10d, edx
  jl     SHORT $LL4@testFuncti
  paddd  xmm1, xmm2
  movdqa         xmm0, xmm1
  psrldq         xmm0, 8
  paddd  xmm1, xmm0
  movdqa         xmm0, xmm1
  psrldq         xmm0, 4
  paddd  xmm1, xmm0
  movd   r11d, xmm1
$LN9@testFuncti:
  movsxd         rcx, r10d

  mov    edx, r8d
  cmp    rcx, rbx
  jge    SHORT $LN20@testFuncti
  mov    rax, rbx
  sub    rax, rcx
  cmp    rax, 2
  jl     SHORT $LC14@testFuncti
  lea    rax, QWORD PTR [rbx-1]
  npad   3
$LL16@testFuncti:

  add    r8d, DWORD PTR [r9+rcx*4]
  add    edx, DWORD PTR [r9+rcx*4+4]
  add    rcx, 2
  cmp    rcx, rax
  jl     SHORT $LL16@testFuncti
$LC14@testFuncti:

  cmp    rcx, rbx
  jge    SHORT $LN15@testFuncti

  add    r11d, DWORD PTR [r9+rcx*4]
$LN15@testFuncti:

  lea    eax, DWORD PTR [rdx+r8]
  add    eax, r11d

  mov    rbx, QWORD PTR [rsp+8]
  ret    0
$LN20@testFuncti:
  mov    rbx, QWORD PTR [rsp+8]
  mov    eax, r11d
  ret    0
testFunction ENDP
_TEXT   ENDS
END
