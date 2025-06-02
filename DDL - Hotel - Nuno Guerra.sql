CREATE DATABASE IF NOT EXISTS hotel;

USE hotel;

CREATE TABLE quarto (
	numeroquarto INT NOT NULL,
    tipo ENUM('Executivo', 'Luxo', 'Superluxo') NOT NULL,
    quantidade_camas INT NOT NULL,
    valor_diaria DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(numeroquarto)
);

CREATE TABLE hospede (
	idhospede INT NOT NULL,
    primeiro_nome VARCHAR(45) NOT NULL,
    ultimo_nome VARCHAR(45) NOT NULL,
    celular VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    PRIMARY KEY(idhospede)
);

CREATE TABLE funcionario (
	idfuncionario INT NOT NULL,
    primeiro_nome VARCHAR(45) NOT NULL,
    ultimo_nome VARCHAR(45) NOT NULL,
    celular VARCHAR(45) NOT NULL,
    tipo ENUM('Gerente', 'Recepcionista') NOT NULL,
    email VARCHAR(45),
    id_gerente INT,
    PRIMARY KEY(idfuncionario),
    FOREIGN KEY(id_gerente) REFERENCES funcionario(idfuncionario)
);

CREATE TABLE reserva (
	cod_reserva INT NOT NULL,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL,
    numero_adultos INT NOT NULL,
    numero_criancas INT NOT NULL,
    hospede_idhospede INT NOT NULL,
    idrecepcionista INT NOT NULL,
    PRIMARY KEY(cod_reserva),
    FOREIGN KEY(hospede_idhospede) REFERENCES hospede(idhospede),
    FOREIGN KEY(idrecepcionista) REFERENCES funcionario (idfuncionario)
);

CREATE TABLE reserva_quarto (
	id_reserva INT NOT NULL,
    numero_quarto INT NOT NULL,
    PRIMARY KEY(id_reserva, numero_quarto),
	FOREIGN KEY(id_reserva) REFERENCES reserva(cod_reserva),
    FOREIGN KEY(numero_quarto) REFERENCES quarto(numeroquarto)
);
