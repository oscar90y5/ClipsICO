(defrule arranca1 "El coche no arranca por falta de electricidad"
	(arranca 0)
	=>
	(assert (potencia 0))
)

(defrule arranca2 "El coche no arranca por falta de combustible"
	(arranca 1)
	=>
	(assert (combustible 0))
)

(defrule sePara "El coche se para"
	(sePara 1)
	=>
	(assert (combustibleMotor 0))
)

(defrule fusibleFundido "El fusible esta roto"
	(inspeccionFusible 0) (potencia 0)
	=>
	(assert(fusible 0))
)

(defrule bateriaBaja "La bateria esta agotada"
	(indicadorBateria 0) (potencia 0)
	=>
	(assert(bateria 0))
)

(defrule depositoCombustible "El deposito esta agotado"
	(indicadorCombustible 0) (combustibleMotor 0)
	=>
	(assert(combustibleDeposito 0))
)
