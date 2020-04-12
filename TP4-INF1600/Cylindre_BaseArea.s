.globl	_ZNK8Cylinder11BaseAreaAsmEv

_ZNK8Cylinder11BaseAreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
           #acces aux reigstres
        mov 8(%ebp), %eax 

        fld 4(%eax) #on met le rayon dans s[0]

	    fld 4(%eax) #on push encore rayon ?

        fldpi # on push pi dans  s[0], s[1]=radius et s[2]=radius

	    fmulp # rayon * pi

        fmulp # rayon*rayon * pi 
        
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
