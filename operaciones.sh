#!/bin/bash
let A=$1
let B=$2


#
# Función de sumar

function suma(){
	let C=$A+$B
	echo "la suma es: '$C'"
}


function multiplicacion(){
	let D=$A*$B
	echo "La multiplicación es: '$D'"
}


suma
multiplicacion
