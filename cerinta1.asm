.data
    
     sirb16: .space 101
     sirb2:  .space 401
     
     formatScanf: .asciz "%s"
     formatPrintf: .asciz "%s "
     formatPrintf2: .asciz "%d "
     formatPrintfNeg: .asciz "-%d "
     formatPrintf3: .asciz "\n"
     
     spatiu: .asciz "abc"
     termsir: .asciz "\n"
     lita: .asciz "a"
     litb: .asciz "b"
     litc: .asciz "c"
     litd: .asciz "d"
     lite: .asciz "e"
     litf: .asciz "f"
     litg: .asciz "g"
     lith: .asciz "h"
     liti: .asciz "i"
     litj: .asciz "j"
     litk: .asciz "k"
     litl: .asciz "l"
     litm: .asciz "m"
     litn: .asciz "n"
     lito: .asciz "o"
     litp: .asciz "p"
     litq: .asciz "q"
     litr: .asciz "r"
     lits: .asciz "s"
     litt: .asciz "t"
     litu: .asciz "u"
     litv: .asciz "v"
     litw: .asciz "w"
     litx: .asciz "x"
     lity: .asciz "y"
     litz: .asciz "z"

     let: .asciz "let"
     add: .asciz "add"
     sub: .asciz "sub"
     mul: .asciz "mul"
     div: .asciz "div"
     
     
     neg: .long -1
     indexsb2: .long 0
     indexlin12: .long 12
     indexlin24: .long 25
     indexlin36: .long 38
     indexlin48: .long 51
     indexlin60: .long 64
     indexlin72: .long 77
     indexlin84: .long 90
     indexlin96: .long 103
     indexlin108: .long 116
     indexlin120: .long 129
     indexlin132: .long 142
     indexlin144: .long 155
     indexlin156: .long 168
     indexlin168: .long 181
     indexlin180: .long 194
     indexlin192: .long 207
     indexlin204: .long 220
     indexlin216: .long 233
     indexlin228: .long 246
     indexlin240: .long 259
     indexlin252: .long 272
     indexlin264: .long 285
     indexlin276: .long 298
     indexlin288: .long 311
     indexlin300: .long 324
     indexlin312: .long 337
     indexlin324: .long 350
     indexlin336: .long 363
     indexlin348: .long 376
     indexlin360: .long 389
     
     
     
     NrAct: .long 0
     VarAct: .long 0
     chDelim : .asciz "_"
     res : .space 4
     VarRes : .space 4
.text


.global main


main:

      pushl $sirb16
      pushl $formatScanf
      call scanf
      popl %ebx
      popl %ebx
      
      movl $sirb16, %edi
      movl $sirb2,  %esi 
      xorl %ecx, %ecx
      
comeback:
 
      movb (%edi, %ecx, 1) , %al
      
      cmp $0, %al
      je startstrtok
      
      cmp $48, %al
      je cif0
      
      cmp $49, %al
      je cif1
      
      cmp $50, %al
      je cif2
      
      cmp $51, %al
      je cif3
      
      cmp $52, %al
      je cif4
      
      cmp $53, %al
      je cif5
      
      cmp $54, %al
      je cif6
      
      cmp $55, %al
      je cif7
      
      cmp $56, %al
      je cif8
      
      cmp $57, %al
      je cif9
      
      cmp $65, %al
      je litA
      
      cmp $66, %al
      je litB
      
      cmp $67, %al
      je litC
          
      cmp $68, %al
      je litD
     
      cmp $69, %al
      je litE
      
      cmp $70, %al
      je litF
//  0
//  0000

sep1:  
       movb $95, (%esi, %ecx, 1)
       incl %ecx
       movl %ecx, indexsb2
     
       popl %ecx
       jmp cont

cif0:


     pushl %ecx
     movl indexsb2, %ecx
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     //addl $4, indexsb2
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     
     
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif1:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movb $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif2:


     pushl %ecx
     movl indexsb2, %ecx  
      
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif3:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif4:


     pushl %ecx
     movl indexsb2, %ecx

     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
    
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     

cif5:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif6:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif7:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif8:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


cif9:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont


litA:

     
     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     
     
litB:

     
     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     
     
litC:


     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     

litD:

 
     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
    
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     
     
litE:

  
     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $48, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     
     
litF:

    
     pushl %ecx
     movl indexsb2, %ecx
     
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     movw $49, (%esi, %ecx, 1)
     incl %ecx
     
     cmp indexlin12, %ecx
     je sep1
     
     cmp indexlin24, %ecx
     je sep1

     cmp indexlin36, %ecx
     je sep1

     cmp indexlin48, %ecx
     je sep1
     
     cmp indexlin60, %ecx
     je sep1
     
     cmp indexlin72, %ecx
     je sep1
     
     cmp indexlin84, %ecx
     je sep1
     
     cmp indexlin96, %ecx
     je sep1
     cmp indexlin108, %ecx
     je sep1
     cmp indexlin120, %ecx
     je sep1
     
     cmp indexlin132, %ecx
     je sep1
     
     cmp indexlin144, %ecx
     je sep1
     cmp indexlin156, %ecx
     je sep1
     
     cmp indexlin168, %ecx
     je sep1
     cmp indexlin180, %ecx
     je sep1
     cmp indexlin192, %ecx
     je sep1
     cmp indexlin204, %ecx
     je sep1
     cmp indexlin216, %ecx
     je sep1
     cmp indexlin228, %ecx
     je sep1
     cmp indexlin240, %ecx
     je sep1
     cmp indexlin252, %ecx
     je sep1
     cmp indexlin264, %ecx
     je sep1
     cmp indexlin276, %ecx
     je sep1
     cmp indexlin288, %ecx
     je sep1
     cmp indexlin300, %ecx
     je sep1
     cmp indexlin312, %ecx
     je sep1
     cmp indexlin324, %ecx
     je sep1
     cmp indexlin336, %ecx
     je sep1
     cmp indexlin348, %ecx
     je sep1
     cmp indexlin360, %ecx
     je sep1
     
     movl %ecx, indexsb2
     
     popl %ecx
     jmp cont
     
     
cont:

      incl %ecx
      jmp comeback


startstrtok:


// eu am sirurile de forma 000011112222_3333444455556666_7778889990000_ tot asa,

      
      pushl $chDelim
      pushl $sirb2
      call strtok
      popl %ebx
      popl %ebx
      
      movl %eax, res
      movl res, %edi
      
      
      xorl %ecx, %ecx
      incl %ecx
      
      movb (%edi, %ecx, 1) , %al
      
      cmp $49, %al
      je operatie1
      cmp $48, %al
      je NrVariabila1
      
NrVariabila1:

incl %ecx
movb (%edi,%ecx, 1), %al
cmp $48, %al
je step1
cmp $49, %al
je step2

step2:
       incl %ecx
       jmp Var1
      
Var1:
         incl %ecx
         cmp $12, %ecx
         je ConvertVar
         movb (%edi,%ecx, 1), %al
         cmp $48, %al
         je Var1
         cmp $49, %al
         je CalculVar
          
      
CalculVar: 

         cmp $4, %ecx
         je VarAdd128
         cmp $5, %ecx
         je VarAdd64
         cmp $6, %ecx
         je VarAdd32
         cmp $7, %ecx
         je VarAdd16
         cmp $8, %ecx
         je VarAdd8
         cmp $9, %ecx
         je VarAdd4
         cmp $10, %ecx
         je VarAdd2
         cmp $11, %ecx
         je VarAdd1
         
VarAdd128:

       addl $128, VarAct
       jmp Var1
       
VarAdd64:

       addl $64, VarAct
       jmp Var1
              
VarAdd32:

       addl $32, VarAct
       jmp Var1
       
VarAdd16:

       addl $16, VarAct
       jmp Var1
         
VarAdd8:

       addl $8, VarAct
       jmp Var1
VarAdd4:

       addl $4, VarAct
       jmp Var1
VarAdd2:

       addl $2, VarAct
       jmp Var1
VarAdd1:

       addl $1, VarAct
       jmp Var1            

ConvertVar:
            pushl %ecx
            xorl %ecx, %ecx
            movl VarAct, %ecx
            
            cmp $97, %ecx
            je VarA
            
            cmp $98, %ecx
            je VarB
            
            cmp $99, %ecx
            je VarC
            
            cmp $100, %ecx
            je VarD
            
            cmp $101, %ecx
            je VarE
            
            cmp $102, %ecx
            je VarF
            
            cmp $103, %ecx
            je VarG
            
            cmp $104, %ecx
            je VarH
            
            cmp $105, %ecx
            je VarI
            
            cmp $106, %ecx
            je VarJ
            
            cmp $107, %ecx
            je VarK
            
            cmp $108, %ecx
            je VarL
            
            cmp $109, %ecx
            je VarM
            
            cmp $110, %ecx
            je VarN
            
            cmp $111, %ecx
            je VarO
            
            cmp $112, %ecx
            je VarP
            
            cmp $113, %ecx
            je VarQ
            
            cmp $114, %ecx
            je VarR
            
            cmp $115, %ecx
            je VarS
            
            
            cmp $116, %ecx
            je VarT
            
            cmp $117, %ecx
            je VarU
            
            cmp $118, %ecx
            je VarV
            
            cmp $119, %ecx
            je VarW
            
            
            
            cmp $120, %ecx
            je VarX
            
            cmp $121, %ecx
            je VarY
            
            cmp $122, %ecx
            je VarZ
            
           
            
            
            
      VarA: 
      pushl %edi
      movl $lita, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3  
      
      VarB: 
      pushl %edi
      movl $litb, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
     
      VarC: 
      pushl %edi
      movl $litc, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 

      VarD: 
      pushl %edi
      movl $litd, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3
      
      VarE: 
      pushl %edi
      movl $lite, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarF: 
      pushl %edi
      movl $litf, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarG: 
      pushl %edi
      movl $litg, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarH: 
      pushl %edi
      movl $lith, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarI: 
      pushl %edi
      movl $liti, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarJ: 
      pushl %edi
      movl $litj, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarK: 
      pushl %edi
      movl $litk, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarL: 
      pushl %edi
      movl $litl, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarM: 
      pushl %edi
      movl $litm, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarN: 
      pushl %edi
      movl $litn, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarO: 
      pushl %edi
      movl $lito, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarP: 
      pushl %edi
      movl $litp, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarQ: 
      pushl %edi
      movl $litq, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarR: 
      pushl %edi
      movl $litr, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarS: 
      pushl %edi
      movl $lits, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarT: 
      pushl %edi
      movl $litt, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarU: 
      pushl %edi
      movl $litu, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarV: 
      pushl %edi
      movl $litv, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarW: 
      pushl %edi
      movl $litw, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
                                 
      VarX: 

      pushl %edi
      movl $litx, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3
      
      VarY: 
      pushl %edi
      movl $lity, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
      VarZ: 
      pushl %edi
      movl $litz, %edi
      movl %edi, VarRes
      popl %ecx
      popl %edi
      jmp afisare3 
      
afisare3:

         pushl VarRes
         pushl $formatPrintf
         call printf
         popl %ebx
         popl %ebx
         movl $0, VarAct
         jmp contstrtok 
               
step1:
      incl %ecx
      jmp Numar1
      
Numar1:

         incl %ecx
         cmp $12, %ecx
         je testNeg
         movb (%edi,%ecx, 1), %al
         cmp $48, %al
         je Numar1
         cmp $49, %al
         je Calcul1         

testNeg:
          movl $3, %ecx
          movb (%edi, %ecx, 1), %al
          cmp $49, %al
          je afisareneg
          cmp $48, %al
          je afisare2
          
afisareneg:
           pushl NrAct
           pushl $formatPrintfNeg
           call printf
           popl %ebx
           popl %ebx
           movl $0, NrAct
           jmp contstrtok
         
     
            
      
Calcul1: 

         cmp $4, %ecx
         je add128
         cmp $5, %ecx
         je add64
         cmp $6, %ecx
         je add32
         cmp $7, %ecx
         je add16
         cmp $8, %ecx
         je add8
         cmp $9, %ecx
         je add4
         cmp $10, %ecx
         je add2
         cmp $11, %ecx
         je add1
         
         
add128:

       addl $128, NrAct
       jmp Numar1
       
add64:

       addl $64, NrAct
       jmp Numar1
              
add32:

       addl $32, NrAct
       jmp Numar1
       
add16:

       addl $16, NrAct
       jmp Numar1
         
add8:

       addl $8, NrAct
       jmp Numar1
add4:

       addl $4, NrAct
       jmp Numar1
add2:

       addl $2, NrAct
       jmp Numar1
add1:

       addl $1, NrAct
       jmp Numar1   
       
                 
operatie1:

          addl $8, %ecx
          movb (%edi, %ecx, 1) , %al
          cmp $49, %al
          je Div1      
          cmp $48, %al
          je LetAddSubMul1
          
LetAddSubMul1:

             incl %ecx
             movb (%edi, %ecx, 1) , %al
             cmp $49, %al
             je SubMul1
             cmp $48, %al
             je LetAdd1
          
          
SubMul1:
       
        incl %ecx
        movb (%edi, %ecx, 1) , %al
        cmp $48, %al
        je Sub1
        cmp $49, %al
        je Mul1
          
LetAdd1:

       incl %ecx
       movb (%edi, %ecx, 1) , %al
       cmp $48, %al
       je Let1
       cmp $49, %al
       je Add1

Sub1: 
     
       movl $sub, %edi
       jmp afisare1
       
Mul1: 
     
       movl $mul, %edi
       jmp afisare1                        
Let1: 
     
       movl $let, %edi
       jmp afisare1
       
Add1: 
     
       movl $add, %edi
       jmp afisare1
              
Div1: 
     
       movl $div, %edi
       jmp afisare1
       
       

      

     
afisare1:

        movl %edi, res
        pushl res
        pushl $formatPrintf
        call printf
        popl %ebx
        popl %ebx
        jmp contstrtok
        
afisare2:

         pushl NrAct
         pushl $formatPrintf2
         call printf
         popl %ebx
         popl %ebx
         movl $0, NrAct
         jmp contstrtok
         
        
         
         
contstrtok:

      pushl $chDelim
      pushl $0
      call strtok
      popl %ebx
      popl %ebx
      
      cmp $0, %eax
      
      je exit
     
      
      
      movl %eax, res
      movl res, %edi
   
      xorl %ecx, %ecx
      incl %ecx
      
      movb (%edi, %ecx, 1) , %al
      cmp $49, %al
      je operatie1
      cmp $48, %al
      je NrVariabila1

exit: 
      
      pushl $0
      call fflush
      popl %ebx
      
      pushl $formatPrintf3
      call printf
      popl %ebx
      
      
      
      movl $1, %eax
      xorl %ebx, %ebx
      int $0x80
