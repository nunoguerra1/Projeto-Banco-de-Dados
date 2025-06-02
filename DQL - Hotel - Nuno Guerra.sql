USE hotel;

SELECT DISTINCT f.idfuncionario, f.primeiro_nome, f.ultimo_nome
FROM funcionario f 
JOIN reserva r ON f.idfuncionario = r.idrecepcionista
WHERE f.tipo = 'Recepcionista';

SELECT f.idfuncionario, f.primeiro_nome, f.ultimo_nome
FROM funcionario f
LEFT JOIN reserva r ON f.idfuncionario = r.idrecepcionista
WHERE f.tipo = 'Recepcionista' AND r.idrecepcionista IS NULL;

SELECT * 
FROM hospede h JOIN reserva r ON h.idhospede = r.hospede_idhospede
JOIN reserva_quarto rq ON r.cod_reserva = rq.id_reserva
JOIN quarto q ON rq.numero_quarto = q.numeroquarto
JOIN funcionario f ON r.idrecepcionista = f.idfuncionario
WHERE h.idhospede IN (
	SELECT hospede_idhospede
    FROM reserva
    GROUP BY hospede_idhospede
    HAVING COUNT(*) > 1
);

SELECT h.*
FROM hospede h 
JOIN (
	SELECT hospede_idhospede
    FROM reserva
    GROUP BY hospede_idhospede
    ORDER BY COUNT(*) DESC
    LIMIT 1
) AS mais_reservas ON h.idhospede = mais_reservas.hospede_idhospede;

SELECT q.*
FROM quarto q
JOIN (
	SELECT numero_quarto
    FROM reserva_quarto
    GROUP BY numero_quarto
    ORDER BY COUNT(*) DESC
    LIMIT 1
) AS mais_reservado ON q.numeroquarto = mais_reservado.numero_quarto;

SELECT r.cod_reserva,
	   r.data_checkin,
       r.data_checkout,
       r.numero_adultos,
       q.valor_diaria,
       (DATEDIFF(r.data_checkout, r.data_checkin) * r.numero_adultos * q.valor_diaria) AS valor_total
FROM reserva r
JOIN reserva_quarto rq ON r.cod_reserva = rq.id_reserva
JOIN quarto q ON rq.numero_quarto = q.numeroquarto
ORDER BY valor_total DESC
LIMIT 1;

SELECT *
FROM quarto
WHERE quantidade_camas = (
	SELECT MAX(quantidade_camas)
    FROM quarto
);