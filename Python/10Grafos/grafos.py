#definimos la estrucuira del grafo y con sus aristas

def crear_grafo():
    return{
        "Almacen":{"CiudadA":5, "CiudadB":2},
        "CiudadA":{"Almacen":5, "CiudadB":1, "CiudadC":7},
        "CiudadB":{"Almacen":2, "CiudadA":1, "CiudadD": 4},
        "CiudadC":{"CiudadA":7, "CiudadD": 3},
        "CiudadD":{"CiudadB":4, "CiudadC": 4},
    }

def obtener_aristas():
    return[
        ("Alamacen", "CiudadA", 5),
        ("Alamacen", "CiudadB", 2),
        ("CiudadA", "CiudadB", 1),
        ("CiudadA", "CiudadC", 7),
        ("CiudadB", "CiudadD", 4),
        ("CiudadC", "CiudadD", 3)
    ]

def obtener_nodos():
    return{"Almacen", "CiudadA", "CiudadB", "CiudadC", "CiudadD"}