object daenerys {
    const property artefactos = #{}
    const property limiteInventario = 2 
    
    method encontrar(_artefacto) {
        if ( artefactos.size() < limiteInventario)
            artefactos.add(_artefacto)
    }

    method volverACasa() {
        castillo.agregarArtefactos(artefactos)
        artefactos.clear()
    }
}

object castillo {
    const property artefactos = #{}

    method agregarArtefactos(items) {
        artefactos.addAll(items)
    }
}

object espada {}
object libro {}
object collar {}
object armadura {}