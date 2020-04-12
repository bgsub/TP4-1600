.globl	_ZNK8Cylinder12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK8Cylinder12PerimeterAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        mov 8(%ebp),%eax
        fld 4(%eax) # on met le rayon dans s[0]

        fldpi #pi dans s[0] et le rayon dans s[1]

	    fld factor #le facteur 2.0f s[0], pi s[1] et rayon dans  s[2]

	    fmulp #2.0f * pi

	    fmulp #2.0f * pi * rayon
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
