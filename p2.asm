.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096
.DATA
  outt byte "enter the number",0
  outres byte "the result",0
  string byte 40 DUP (?)
  num1 dd ?
  num2 dd ?
  num3 dd ?
.CODE
  MainProc PROC
     input outt,string,40
	 atod string
	 mov num1,eax

	 input outt,string,40
	 atod string
	 mov num2,eax

	 input outt,string,40
	 atod string
	 mov num3,eax

	 mov eax,num1
	 add eax,num2

	 imul eax,2
	 add eax,num3

	 dtoa string,eax
	 output outres,string

  mov eax,0
  ret
  MainProc ENDP

END