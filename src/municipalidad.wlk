import rodados.*
import partes.*
import colores.*

class Dependencia {
	var property cantEmpleados
	//const property nombre
	const flotaRodados = #{}
	
	method agregarAFlota(rodado){ flotaRodados.add(rodado) }
	method quitarDeFlota(rodado){ flotaRodados.remove(rodado)}
	method pesoTotalFlota(){ return flotaRodados.sum({f => f.peso()}) }
	
	method estaBienEquipada() { 
		return flotaRodados.size() >= 3 and flotaRodados.all({f => f.velMaxima() >= 100} )
	}
	
	method capacidadTotalEnColor(color){ 
		return flotaRodados.filter({f => f.color() == color}).sum({f => f.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){ 
		return flotaRodados.max({f => f.velMaxima()}).color()
	}
	
	method capacidadFaltante(){ 
		//return flotaRodados.sum({f => f.capacidad()}) - cantEmpleados
		
		const capTotal = flotaRodados.sum({f => f.capacidad()})
		return cantEmpleados - capTotal
		
		
	}
	
	method esGrande(){ 
		return flotaRodados.size() == 5 and cantEmpleados >= 40
	}
	
}
