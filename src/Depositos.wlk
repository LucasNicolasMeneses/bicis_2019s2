import Bicicletas.*
import accesoriosParaBicicletas.*
// clases que modelan depositos para bicicletas
class Depositos {
	const bicicletas = []
	
	// debuielve las bicic que tengo en el deposito almacenadas
	method bicicletas(){
		return bicicletas
	}
	//me permite agregar bicic al los depositos
	method almacenarBicicletas(bici){
		bicicletas.add(bici)
	}
	// me permite quitar bicis de los depositos (agregado para mi utilidad)
	method quitarBicicletas(bici){
		bicicletas.remove(bici)
	}
	// me filtra las bicis de mayor velocida crucero
	method bicisRapidas(){
		return bicicletas.filter({bici=>bici.velocidadCrucero()>25})
	}
    // me duelve las marcas que hay en forma de conjunto de este modo no se repiten las marcas
	method marcasEnDeposito(){
		return ( bicicletas.map({bici=>bici.marca()}).asSet())
	}
	// retorna true  si   todas las bicis posean un accesorio luminoso,
	method esNocturno(){
		return bicicletas.all({bici=>bici.tieneLuz()})
	}
	// retorna true si hay una bici que supere el peso de la carga
	method tieneBiciDeCarga(kg){
		return bicicletas.any({bici=>bici.carga()>kg})
	}
	// retorna el nombre de la marca de bicic mas rapida del deposito
	method marcaMasRapida(){
			return bicicletas.max({bici=>bici.velocidadCrucero()}).marca()
	}
	//retorna la suma de la carga de las bicis que su largo sea mayor a 170
	method cargaTotalDeBicisLargas(){// no entendi bien como sacar la suma de la carga para las bicis mayores a 170 cm ,solo pude sacarlo para todas las de la lista pero ,si no son todas no anda.
		   return if (bicicletas.all({bici=>bici.largo()> 170})){
			bicicletas.sum({bici=>bici.carga()})
		}
		else {0 }
			
		
	}
	// retorna la ccantidad de bicic sin accesorio
	method cantidadDeBicisSinAccesorios(){
		return bicicletas.filter({bici=>bici.accesorio().isEmpty()}).size()
	}
	
	// retorna las bicis que son de la misma marca y que su largo no difiera mas de 10 cm
    method sonCompaneras(biciA){// de este solo puede resolver bien la comparacion de marcas en la diferencia me ayudo un compañero eso es algo que me gustaria entender como sacarlo .comento de este modo por que no se como hacer consultas de este indole, gracias

    	return bicicletas.filter({bici=>bici.marca()== biciA.marca() and (bici.largo()-biciA.largo()).between(1,10) and (bici!=biciA)})
    }
}
