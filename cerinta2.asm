.data

 sir: .space 400
formatPrintf3: .asciz "\n"
 formatScanf: .asciz "%[^\n]s"
 formatPrintf: .asciz "%s "
 formatPrintf2: .asciz "%d "
 chDelim: .asciz " " 
 res: .space 4
 PrimulNr: .space 4
 x: .space 4
 y: .space 4
 atoiRes: .space 4
 sum: .space 4
 dif: .space 4
 prod: .space 4
 cat: .space 4
 rezfinal: .space 4
 sirEvaluat: .space 50
 nr7: .asciz "7"
 
.text


.global main


main:
      pushl $sir
      pushl $formatScanf
      call scanf
      popl %ebx
      popl %ebx

      pushl $chDelim
      pushl $sir
      call strtok
      popl %ebx
      popl %ebx
      
      movl %eax, res
      
      pushl res
      call atoi
      popl %ebx
      
      movl %eax, PrimulNr
      
      pushl PrimulNr
      
      
      

cont:  

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
       movb (%edi, %ecx, 1), %al
       cmp $97, %al
       je add
       cmp $115, %al
       je sub
       cmp $100, %al
       je div
       cmp $109, %al
       je mul
       
       pushl res
       call atoi
       popl %ebx
       
       movl %eax, atoiRes
       
       pushl atoiRes
      
      
       jmp cont            
      
add:
     popl y
     popl x
     movl x, %eax
     add y, %eax
     movl %eax, sum
     pushl sum
     jmp cont     
     
sub:
     popl y
     popl x
     movl x, %eax
     sub y, %eax
     movl %eax, dif
     pushl dif
     jmp cont 
     
div:
     xorl %eax, %eax
     xorl %edx, %edx
     popl y
     popl x
     movl x, %eax
     movl y, %ebx
     div %ebx
     movl %eax, cat  
     xorl %eax, %eax
     xorl %edx, %edx
     pushl cat
     jmp cont  
    
mul:
     popl y
     popl x                    
     mov x, %eax
     mov y, %ebx
     mul %ebx
     mov %eax, prod
     pushl prod    
     jmp cont
      
      
exit:
      
       

       pushl $formatPrintf2
       call printf
       popl %ebx
       popl %ebx

       pushl $0
       call fflush
       popl %ebx
       
       pushl $formatPrintf3
       call printf
       popl %ebx
       
       movl $1, %eax
       xorl %ebx, %ebx
       int $0x80

