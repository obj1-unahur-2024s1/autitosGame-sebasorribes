import wollok.game.*

object contador {
	const POSITION = game.at(game.width(),game.height())
	const IMAGE = "paredLadrillos3.jpg"
	
	var numero = 0
	
	method position() = POSITION
	method image() = IMAGE
	
	method contar(){
		numero +=1
		return numero
	}
}
