(deftemplate persona
	(slot nombre)
	(slot pelo)
)

(defrule solicitar-persona
	(declare (salience 10000))
	=>
	(printout t  "Nombre: ")
	(bind ?resNombre (read))
	(printout t  "Color de pelo: ")
	(bind ?resPelo (read))
	(assert (persona (nombre ?resNombre) (pelo ?resPelo)))
)

(defrule persona-sin-pelo-moreno
	(persona (nombre ?nombre) (pelo ~moreno))
	=>
	(printout t ?nombre " no tiene el pelo moreno." crlf)
)
