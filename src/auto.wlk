import wollok.game.*

object auto {
	//definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.at(0,0)
	
	//definimos getter y setter para poder preguntarle y cambiarle
	//a nuestro elemento su imagen y posición.
	
	method image() = image
	method position() = position
	method image(newImage) { image = newImage}
	method position(newPosition) { position = newPosition}
	
	method movement(){
		self.moveUp()
		self.moveDown()
		self.moveLeft()
		self.moveRight()
	}
	method moveUp(){
		keyboard.w().onPressDo{position = game.at(position.x(),(game.height()-1).min(position.y()+1))}
	}
	method moveDown(){
		keyboard.s().onPressDo{position = game.at(position.x(),0.max(position.y()-1))}
	}
	method moveLeft(){
		keyboard.a().onPressDo{position = game.at(0.max(position.x()-1),position.y())}
	}
	method moveRight(){
		keyboard.d().onPressDo{position = game.at((game.width()-1).min(position.x()+1),position.y())}
	}
}
