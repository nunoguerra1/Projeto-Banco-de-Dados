USE hotel;

UPDATE reserva_quarto
SET numero_quarto = 453
WHERE id_reserva = 111 AND numero_quarto = 253;

UPDATE funcionario
SET id_gerente = 12
WHERE tipo = 'Recepcionista';

DELETE FROM reserva_quarto
WHERE id_reserva = 101;

DELETE FROM reserva
WHERE cod_reserva = 101;


UPDATE reserva
SET data_checkin = '2025-06-02',
	data_checkout = '2025-06-10'
WHERE cod_reserva = 100;