.globl	_ZNK8Cylinder14LateralAreaAsmEv

_ZNK8Cylinder14LateralAreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        #acces aux registres 
        mov 8(%ebp), %eax 

        mov 0(%eax), %ecx #ecx contient le tableau de pointer 

        push %eax 

        call *12(%ecx) #s[0] contient maintenant le parametre 

        add $4, %esp #je crois?

        fld 8(%eax) # on met la hauteur dans s[0], s[1]=parameter

	    fmulp #(parametre * hauteur)


        leave          /* restore ebp and esp */
        ret            /* return to the caller */  
