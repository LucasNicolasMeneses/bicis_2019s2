//clase reprecenta un farolito de bici
class Farolito {
	const property peso= 0.5
	const property carga = 0
	const property luminoso = true
	
	// retorna si es luminoso
	method esLuminoso(){
	 return luminoso
	}
	
	//retorna la carga del objeto
	method carga(){
		return carga
	}
	
	// retorna el peso 
	method peso(){
		return peso
	}
}


// clse de canastos
class Canasto {
	var property peso 
	var property carga
	var property volumen
	const luminoso=false
	
	// retorna si es luminoso
	method esLuminoso(){
		return luminoso
	}
	
	
	
	// retorna el volumen del canasto
    method volumen(){
    	return volumen
    } 
    
    // setea el peso de el canasto
	method setPeso(){
		peso = volumen / 10
	}
	
	// retorna el peso 
	method peso(){
		return peso
	}
	
	// setea la carga
    method setCarga(){
  	carga=volumen*2
    }
    
    // retorna la carga
    method carga(){
  	return carga
    }
}

// tiene que ser calse por que puede haber de tipos distitos de morrales
class Morral {
	const property  peso = 1.2
	var property carga 
	var property largo
	var ojoDeGato=true
	
	// retorna el largo del morral
	method largo(){
		return largo
	}
	// setea la carga del morral
	method setCarga(){
		carga=largo / 3
	}
	// retorna la carga 
	method carga(){
		return carga
	}
	// retorna el peso
	method peso(){
		return peso
	}
	//setea si tiene ojo de gato 
	method setOjoDeGato(){
		ojoDeGato= not ojoDeGato
	}
	// no pude encontrar otro manera de hacerlo andar use la estructura (if con la  devolucion  de la variable al final ya procesada) 
	// por eso sino ubiece aplicado un (return if)  
	method esLuminoso(){
		var luminoso = true
		if (not ojoDeGato){
           luminoso = false}
           else{luminoso}
           return luminoso
	}
	
	/*habria que agregar unas nuevas clases para crear los objetos porta botellita,  canasto de atras y luces para ruedas sipre respetando el polimosrfismo (que entiendadn los mismos metodos y en algunos casos como en los las clases hechas arriba sus atributos )*/
	
}