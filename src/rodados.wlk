import partes.*
import colores.*

class ChevroletCorsa {
	var property color
	
	method capacidad(){return 4}
	method velMaxima(){return 150}
	method peso(){return 1300}
}

class RenaultKwid {
	var property tieneTanqueAdicional
	method capacidad(){return if (tieneTanqueAdicional){3}else{4}}
	method velMaxima(){return if (tieneTanqueAdicional){120}else{110}}
	method peso(){return if (tieneTanqueAdicional){1200 + 150}else{1200}}
	method color(){return azul}
}

class Traffic {
	var property interior
	var property motor
	method capacidad(){return interior.capacidad()}
	method velMaxima(){return motor.velMaxima()}
	method peso(){return 4000 + interior.peso() + motor.peso()}
	method color(){return blanco}
}

class AutoEspecial {
	var property capacidad
	var property velMaxima
	var property color
	var property peso
}
