.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  g1 byte "enter grade 1",0
  w1 byte "enter weight 1",0
  g2 byte "enter grade 2",0
  w2 byte "enter weight 2",0
  g3 byte "enter grade 3",0
  w3 byte "enter weight 3",0
  g4 byte "enter grade 4",0
  w4 byte "enter weight 4",0

  g dd ?
  w dd ?
  mull dd ?
  sofw dd ?
  stringg byte 40 DUP (?)
  stringw byte 40 DUP (?)
  reslt byte 20 DUP (?)
  prom byte "the weighted sum",0
  prom1 byte "sum of the weights",0
  prom2 byte "the weighted average ",0
.CODE
 MainProc PROC
    input g1,stringg,40
	atod stringg
	mov g,eax
	input w1,stringw,40
	atod stringw
	mov sofw,eax
	mov w,eax
	mov eax,g
	imul eax,w
	mov mull,eax

	input g2,stringg,40
	atod stringg
	mov g,eax
	input w2,stringw,40
	atod stringw
	add sofw,eax
	mov w,eax
	mov eax,g
	imul eax,w
	add mull,eax

	input g3,stringg,40
	atod stringg
	mov g,eax
	input w3,stringw,40
	atod stringw
	add sofw,eax
	mov w,eax
	mov eax,g
	imul eax,w
	add mull,eax

	input g4,stringg,40
	atod stringg
	mov g,eax
	input w4,stringw,40
	atod stringw
	add sofw,eax
	mov w,eax
	mov eax,g
	imul eax,w
	add mull,eax

	dtoa reslt,mull
	output prom,reslt

	dtoa reslt,sofw
	output prom1,reslt

	mov edx,0
    mov eax,mull
    mov ecx,sofw
    div ecx
    dtoa reslt,eax
	output prom2,reslt

 mov eax,0
 ret
 MainProc ENDP
END