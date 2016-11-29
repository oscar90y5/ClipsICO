;Lo primero siempre es definir la plantilla:
(deftemplate persona "Un ejemplo de plantilla"
	(multislot nombre)
	(slot edad)
	(slot color-ojos)
	(slot color-pelo )
)

;Definir hechos con la estructura de la plantilla
(deffacts colegas "Algunos colegas"
	(persona 
		(nombre Luis Perez Rubio)
		(edad 23)
		(color-ojos azul)
		(color-pelo rubio)
	)
	(persona 
		(nombre Juan Soto Garcia)
		(edad 24)
		(color-ojos gris)
		(color-pelo castano)
	)
)

(defrule edad-colegas "Encontrar la edad de los colegas"
	(persona 
		(nombre ?x ? ?)
		(edad ?y)
	)
	=>
	(printout t " " ?x " tiene " ?y " años." crlf)
)
