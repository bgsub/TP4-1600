.globl	_ZNK8Cylinder9VolumeAsmEv

_ZNK8Cylinder9VolumeAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        mov 8(%ebp), %eax 

        mov 0(%eax), %ecx #ecx est le tableau de pointeur (virtuel)

        push %eax 

        call *20(%ecx) #on met l aire de base dans s[0]

        add $4, %esp 

        fld 8(%eax) #hauteur dans s[0], s[1] possede maintenant l aire de base

	    fmulp #(aire de base * hauteur)
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
