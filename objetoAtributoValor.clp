(deftemplate   oav-u
	(slot objeto (type SYMBOL))
	(slot atributo(type SYMBOL))
	(slot valor)
)

(deffacts hechos-supuestamente-univaluados
	(oav-u 
		(objeto Juan)
		(atributo edad)
		(valor 30)
	)
	
	(oav-u
		(objeto Juan)
		(atributo edad)
		(valor 41)
	)
)

;Cual es la edad de juan?? (esto del oav en una cagada)

(defrule garantizar-semantica
	(declare (salience 10000))
	?f1 <- (oav-u (objeto ?objeto) (atributo ?atributo))
	?f2 <- (oav-u (objeto ?objeto) (atributo ?atributo))
	(test (neq ?f1 ?f2))
	=>
	(retract ?f2)
)
