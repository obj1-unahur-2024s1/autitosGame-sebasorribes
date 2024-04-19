import wollok.game.*
import auto.*

object enemigo {
	//definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoAzul.png"
	var position = game.center()
	
	method image() = image
	method position() = position
	method image(newImage) { image = newImage}
	method position(newPosition) { position = newPosition}
	
	method persuit(){
		var diferenciaX = (auto.position().x()-position.x())
		var distanciaX = diferenciaX.abs()
		var diferenciaY = (auto.position().y()-position.y())
		var distanciaY = diferenciaY.abs()
		
		if(distanciaX >= distanciaY){
			if(diferenciaX<0){
				position = game.at(position.x()-1,position.y())
			}else{
				position = game.at(position.x()+1,position.y())
			}
		}else{
			if(diferenciaY <0){
				position = game.at(position.x(),position.y()-1)
			}else{
				position = game.at(position.x(),position.y()+1)
			}
		}
	}
}
