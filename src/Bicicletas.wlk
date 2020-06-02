import accesoriosParaBicicletas.*
// clse de biccletas me permite crear las bicics que quiera y de mo modelos que quiera
class Bicicletas {
	var property largo
	var property marca
	var property rodado
	var  property accesorio=[]
	
	
	
	// retorna el larg de las bicicletas
	method largo(){
		return largo
	}
	
	
	
	// retorna las marcas de las bicicletas
	method marca(){
		return marca
	}
	
   // retorna el rodado de las bicicletas
    method rodado(){
    	return rodado
    }
    // permite setear los accesorios para las bicicletas
    method setAccesorio(accesorioNuevo){
    	accesorio.add(accesorioNuevo)
    }
    
    
    // permite permite quitar accesorios a las bicicletas
    method quitarAccesorios(accesorioASacar){
    	accesorio.remove(accesorioASacar)
    }
    
    // retorna los accesorios de las bicicletas
    method accesorio(){
    return accesorio
    }
    
    // retorna la altura de las bicis
    method altura(){
    	return  rodado * 2.5 + 15 
    }
    
    // retorna la velocidad crucero de las bicicletas
    method velocidadCrucero(){
    	return if (largo>=120){rodado +6}
    	else{rodado+2}
    }
    
    // retornma la carga que tien el accesorio de la bicicleta
    method carga(){
    	return accesorio.sum({acce=>acce.carga()})
    }
    
    //rerona el peso de la bici con o sin accesorios
    method peso(){
    	return  (rodado /2+accesorio.sum({acce=>acce.peso()}))
    }
    
    // retorna si la bici tien al menos un accesorio luminoso
    method tieneLuz(){
    	 return accesorio.any({acce=>acce.esLuminoso()})
    }
    
    // retorna los accesorios mas luminosos de la bicicletas
    method accesoriosLivianos(){
    	return accesorio.filter({acce=>acce.peso()<1})
    }
    
}
