object daenerys{
    const property artefactos = #{}
    const property artefactos_rocadragon = #{}
    const property historial_artefactos = {}
    
    method encontrar(_artefacto) {
        if ( artefactos.size() <= 1){
            artefactos.add(_artefacto)
            return}
        return "Limite alcanzado"
    }

    method volverACasa() {
        artefactos_rocadragon.addAll(artefactos)
        artefactos.clear()
    }

    method listar_artefactos() {
        return artefactos+artefactos_rocadragon
    }
}

object espada {}
object libro {}
object collar {}
object armadura {}