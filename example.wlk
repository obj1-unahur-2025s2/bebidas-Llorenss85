object tito {
  var bebida=whisky
  var rendimientoActual=1
  method cambiarBebida(unaBebida){
    bebida=unaBebida
  }
  method getInnercia()=490
  method consumir(dosis,unaBebida){
    if(bebida !=unaBebida){
      self.cambiarBebida(unaBebida)
    }
    rendimientoActual = unaBebida.provocarRendimiento(dosis)
  }
  method getRendimiento()=rendimientoActual
  method getPeso()=70
  method velocidad()=  self.getRendimiento() * self.getInnercia() / self.getPeso()
}

object whisky{
  method provocarRendimiento(dosis){
    return 0.9 **dosis
  }
}
object tereré{
  method provocarRendimiento(dosis){
    return (0.1 *dosis).max(1) 
  }
}
object cianuro{
  method provocarRendimiento(dosis){
    return dosis * 0
  }
}