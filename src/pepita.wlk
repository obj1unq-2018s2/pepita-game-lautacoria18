import ciudades.*

object pepita {
	var property energia = 120
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() {
						if (energia < 10) {return "pepona.png"}
											
						else if (energia >100) {return "pepita2.png"}
						
						else { return "pepita.png"}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		else {	game.say(self, "Ya estoy en !")
			
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		if (energia >=self.energiaParaVolar(posicion.distance(nuevaPosicion)))
		self.posicion(nuevaPosicion)
		else { game.say(self, "Dame de comer primero!")}
	}	
	
	method teEncontro(algo){
		algo.darDeComer(self)
	}
}

