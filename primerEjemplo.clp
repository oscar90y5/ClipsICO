;Primer ejemplo (AMIGOS)

;Hechos iniciales
(deffacts amigos "algunos amigos"
    (persona "Luis Prieto" 53 1.83)
    (persona "Ana Perez" 56 1.70)
)

;Regla
(defrule nombre-amigos "Encontrar el nombre de los amigos"
    (declare (salience 0)) 
    (persona ?x ? ?)
=> 
    (assert (encontrado ?x)) 
)

