.globl	_ZNK9Rectangle7AreaAsmEv

_ZNK9Rectangle7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        #acces au registre
        mov 8(%ebp),%eax

        fld 4(%eax) # on place la longueur dans s[0]

        fld 8(%eax) #on place largeur dans s[0] et la hauteur dans s[1] maintenant

        fmulp #s[0]*s[1](hauteur*largeur)
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
