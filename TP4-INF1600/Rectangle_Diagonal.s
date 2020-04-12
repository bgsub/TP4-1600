.globl	_ZNK9Rectangle11DiagonalAsmEv

_ZNK9Rectangle11DiagonalAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
         mov 8(%ebp),%eax

        fld 4(%eax) #on place la longueur dans s[0]
        fld 4(%eax) # on fait la meme chose donc  s[0] = longueur (ligne 10 = s[1]= longueur)

        fmulp #(longueur * longueur) dans  s[0]

        fld 8(%eax) # on place la largeur dans s[0]( le carr/ de la longueur dans s[1]
        fld 8(%eax) # on  place encore la largeur dans s[0], largeur precedante dans s[1] et carre longueur dans s[1]

        fmulp # ( largeur^2 dans s[0], longueur^2 dans s[1]

        faddp #s[0]+s[1]

        fsqrt # sqrt(s[0]+s[1])
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
