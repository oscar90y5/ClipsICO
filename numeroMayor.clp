(deffacts numeros
	(numero 1)
	(numero 2)
	(numero 3)
	(numero 4)
	(numero 3)
	(numero 2)
)
(defrule numero-mayor
	(numero ?x)
	(not (numero ?y&:(> ?y ?x)))
	=>
	(printout t "El número mayor es: " ?x crlf)
)
