.globl	_ZNK9Rectangle12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK9Rectangle12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
           
        mov 8(%ebp),%eax

        fld 4(%eax) #on place la longueur dans s[0]

        fld 8(%eax) #on place la largeur dans s[0], s[1] contient longueur

        faddp #s[0]+s[1] et le resultat va dans s[0]

        fld factor # on push le facteur 2.0f

        fmulp #2.0f * (longueur+largeur)

        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
