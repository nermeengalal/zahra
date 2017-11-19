.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096
.DATA
  outt byte "enter the length",0
  outtt byte "enter the width",0
  outres byte "the result",0
  string byte 40 DUP (?)
  lengt dd ?
  widt dd ?
.CODE
  MainProc PROC
   input outt,string,40
   atod string
   mov lengt,eax

   input outtt,string,40
   atod string
   mov widt,eax

   mov eax,lengt
   imul eax,2
   mov lengt,eax

   mov eax,widt
   imul eax,2

   add eax,lengt
   dtoa string,eax
   output outres,string


  MainProc ENDP
END