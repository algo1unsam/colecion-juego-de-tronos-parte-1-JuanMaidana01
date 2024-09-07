object daenerys {
    const property artefactos = #{}
    const property historia = []
    const property limiteInventario = 2 
    
    method encontrar(_artefacto) {
        if ( artefactos.size() < limiteInventario)
            artefactos.add(_artefacto)
        historia.add(_artefacto)
    }

    method volverACasa() {
        castillo.agregarArtefactos(artefactos)
        artefactos.clear()
    }

    method posesiones() = self.artefactos() + castillo.artefactos()
	method posee(_artefacto) = self.posesiones().contains(_artefacto)	
}

object castillo {
    const property artefactos = #{}

    method agregarArtefactos(_artefactos) {
        artefactos.addAll(_artefactos)
    }
}

object espada {}
object libro {}
object collar {}
object armadura {}