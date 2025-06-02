USE hotel;

INSERT INTO quarto (numeroquarto, tipo, quantidade_camas, valor_diaria) VALUES
(52, 'Executivo', 1, 200.00),
(53, 'Executivo', 1, 200.00),
(252, 'Luxo', 2, 400.00),
(253, 'Luxo', 2, 400.00),
(452, 'Superluxo', 4, 600.00),
(453, 'Superluxo', 4, 600.00);

INSERT INTO funcionario (idfuncionario, primeiro_nome, ultimo_nome, celular, tipo, email, id_gerente) VALUES
(11, 'Bruno', 'Antonio', '18998081900', 'Gerente', 'bruhan@gmail.com', NULL),
(12, 'Cesar', 'Santos', '21971270548', 'Gerente', 'cesantos@gmail.com', NULL);

INSERT INTO funcionario (idfuncionario, primeiro_nome, ultimo_nome, celular, tipo, email, id_gerente) VALUES
(1, 'Joao', 'Zimmerman', '18988115251', 'Recepcionista', 'joaoz@gmail.com', 11),
(2, 'Matheus', 'Zardetto', '18998030210', 'Recepcionista', 'matheuszar@gmail.com', 11),
(3, 'Yasmin', 'Coelho', '14996964920', 'Recepcionista', 'yascoelho@gmail.com', 11),
(4, 'Nuno', 'Guerra', '18996187550', 'Recepcionista', 'nunog@gmail.com', 11);

INSERT INTO hospede (idhospede, primeiro_nome, ultimo_nome, celular, email) VALUES
(20, 'Danilo', 'Pereira', '31984253561', 'danilo_pereira@gmail.com'),
(21, 'Bruno', 'Oliveira', '82981418047', 'bruno_oliv@gmail.com'),
(22, 'Noah', 'Cruz', '66999150791', 'noahcruz@gmail.com'),
(23, 'Marli', 'Cavalcanti', '86981786332', 'Marlicaval@gmail.com'),
(24, 'Kamilly', 'Araujo', '24982781545', 'Karaujo@gmail.com'),
(25, 'Miguel', 'Costa', '82996235943', 'Miguelcosta@gmail.com');

INSERT INTO reserva (cod_reserva, data_checkin, data_checkout, numero_adultos, numero_criancas, hospede_idhospede, idrecepcionista) VALUES
(100, '2025-06-01', '2025-06-04', 2, 0, 20, 1),
(101, '2025-06-10', '2025-06-13', 1, 1, 20, 1),
(102, '2025-06-13', '2025-06-14', 1, 0, 21, 1),
(103, '2025-06-15', '2025-06-20', 1, 0, 21, 1),
(104, '2025-06-20', '2025-06-24', 2, 0, 22, 2),
(105, '2025-06-24', '2025-06-26', 1, 1, 22, 2),
(106, '2025-06-26', '2025-06-28', 1, 0, 23, 2),
(107, '2025-06-28', '2025-06-30', 2, 1, 23, 2),
(108, '2025-07-01', '2025-07-04', 1, 1, 24, 3),
(109, '2025-07-04', '2025-07-06', 1, 0, 24, 3),
(110, '2025-07-08', '2025-07-11', 2, 1, 25, 3),
(111, '2025-07-12', '2025-07-14', 2, 0, 25, 3);

INSERT INTO reserva_quarto (id_reserva, numero_quarto) VALUES
(100, 52),
(101, 52),
(102, 52),
(103, 53),
(104, 53),
(105, 53),
(106, 252),
(107, 252),
(108, 252),
(109, 253),
(110, 253),
(111, 253);
