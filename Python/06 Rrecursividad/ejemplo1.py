def sumar_paginas(paginas):
    #caso base: si la lista esta vacia devuelve 0
    if not paginas:
        return 0
    #suma el primer elemento y llama recursivamente en el resto de la lista
    return paginas[0]+sumar_paginas(paginas[1:])
	    
#ejemplo de uso	    
libros =[200, 250, 450, 720] #numero de paginas de cada libro
total_paginas = sumar_paginas(libros)
print("el total de paginas es: ", total_paginas)