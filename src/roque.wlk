import ciudades.*
import comidas.*
import pepita.*

object roque {
	
	var property posicion = game.at(5,6)
	var property comidaActual = null
	
	method imagen() = "jugador.png"
	
	method move(nuevaPosicion) {
		
		self.posicion(nuevaPosicion)
	}
	
	method agarraComida(comida) {
		
			if (comidaActual != null){
				
							game.addVisualIn(comidaActual, posicion.up(1))
			}
			
			
				comidaActual= comida 
		
	
	}

	method darDeComer(ave){
		
		if (comidaActual != null) {
			
			ave.come(comidaActual)
			game.addVisualIn(comidaActual, game.at(0.randomUpTo(10),0.randomUpTo(10)))
			
		}
		comidaActual=null
	}
}
