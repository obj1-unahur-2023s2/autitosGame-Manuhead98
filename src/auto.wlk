import wollok.game.*

object corsa {
	var position =	
	
    method position(unaPosicion){
    	position = unaPosicion
    }	
    method position()= position
	
	method image() = "autitoAzul.png" 
	
	method arriba(){
		position = position.up(1)
	}
	method abajo(){
		position = position.down(1)
	}
	method derecha(){
		position = position.right(1)
	}
	method izquierda(){
		position = position.left(1)
	}		
}


object twingo {
	var position =	
	
    method position(unaPosicion){
    	position = unaPosicion
    }	
    method position()= position
	
	method image() = "autitoRojo.png" 
	method arriba(){
		position = position.up(1)
	}
	method abajo(){
		position = position.down(1)
	}
	method derecha(){
		if(position.x() < game.width() -1){
			position = position.right(1)
		} else{
			position = game.at(0, position.y())
		}
	}
	
	method izquierda(){
		position = position.left(1)
	}			
}
