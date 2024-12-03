import grafos
import logica
import interfaz

def main():
    logica_={
        "dijkastr" : logica.dijkastra,
        "kruskal": logica.kruskal
    }

    interfaz.crear_interfaz(grafos.crear_grafo, grafos.obtener_aristas, grafos.obtener_nodos, logica_)

main()
