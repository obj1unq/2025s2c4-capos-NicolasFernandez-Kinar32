object rolando{
    const property artefactos = []
    const historial = []

    method agarrar(objeto){
        historial.add(objeto)
        self.puedeAgarrar(objeto)
        artefactos.add(objeto)
    }

    method puedeAgarrar(objeto){
        if (not self.tieneCapacidadParaLlevarlo()){
            self.error("Ya está lleno!")
        }
    }

    method tieneCapacidadParaLlevarlo(){
        return artefactos.size() < 2
    }

    method dejarObjeto(artefacto){
        castillo.almacenar(artefacto)
        artefactos.clear()
    }

    method posesionesTotales(){
        return artefactos + castillo.cofre()
    }

    method historial(){
        return historial
    }
}

object coleccionables{
    const objetos = [espadaDelDestino, libroDeHechizos, collarDivino, armaduraDeAceroValyrio]
    method objetos(){
        return objetos
    }
}

object espadaDelDestino{
    
}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraDeAceroValyrio{

}

object castillo{
    const property cofre = []

    method almacenar(bolsa){
       cofre.addAll(bolsa)
    }

    method posesiones(){

    }
}