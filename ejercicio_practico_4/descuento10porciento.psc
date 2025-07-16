// Requerimientos:
// - El algoritmo debe recibir el nombre del cliente y el monto total de su compra.
// - Si el monto es mayor o igual a $100.000, debe aplicarse un 10 MOD  de descuento.
// - El programa debe mostrar el nombre del cliente, el monto original, el descuento aplicado y el total a pagar.
Proceso MontoCompra
	Definir nombreCliente Como Cadena;
	Definir monto, descuento, totalPagar Como Real;
	Escribir 'Ingrese su nombre';
	Leer nombreCliente;
	Escribir 'Ingrese el valor de su compra';
	Leer monto;
	Escribir ' ';
	Escribir ' ***************************************************************************** ';
	Escribir '  Si el monto es igual o superior a $100.000 ud obtendrá un 10% de descuento';
	Escribir ' ***************************************************************************** ';
	Escribir ' ';
	Si monto>=100000 Entonces
		descuento <- monto*0.10;
		Escribir nombreCliente, ' su compra tiene un 10% de descuento';
	SiNo
		Escribir nombreCliente, ' su compra no tiene descuento';
	FinSi
	totalPagar <- monto-descuento;
	Escribir 'Con el descuento aplicado, el total a pagar por su compra es de $ ', totalPagar;
	Escribir '  ';
	Escribir 'Gracias por su compra, regrese pronto';
	Escribir '  ';
FinProceso
