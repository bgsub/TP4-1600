.globl	_ZNK8Cylinder7AreaAsmEv

_ZNK8Cylinder7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        #acces aux registres
        mov 8(%ebp), %eax 

        mov 0(%eax), %ecx #ecx qui contien le tableau de pointeurs virtuels
        push %eax 
        call *20(%ecx) # on push l aire de base dans s[0] ( etant un  des parametres, type float)

        mov 0(%eax), %ecx 
        push %eax 
        call *28(%ecx) #s[0] contient l aire lateral, s[1]= l aire de base (l autre parametre, type float)

        faddp # (aire de base + aire laterale)
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
