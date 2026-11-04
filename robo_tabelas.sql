CREATE DATABASE robo;

DROP TABLE `robo`.`cliente`;
CREATE TABLE `robo`.`cliente`(
	idCliente INT NOT NULL AUTO_INCREMENT,
    nomeCliente VARCHAR(50) NOT NULL,
    enderecoCliente CHAR(8) NOT NULL,
    data_nascCliente DATE NOT NULL,
    generoCliente VARCHAR(15) NOT NULL,
    PRIMARY KEY (idCliente)
);

INSERT INTO `robo`.`cliente` (nomeCliente, enderecoCliente, data_nascCliente, generoCliente) VALUES
('Ana Silva', '01001000', '1990-05-15', 'Feminino'),
('Bruno Costa', '20010010', '1985-11-22', 'Masculino'),
('Carlos Souza', '30140030', '1998-03-08', 'Masculino'),
('Diana Oliveira', '40020000', '1993-07-19', 'Feminino'),
('Eduardo Santos', '50710000', '2001-12-02', 'Masculino');


DROP TABLE `robo`.`colaborador`;
CREATE TABLE `robo`.`colaborador`(
	idColaborador INT NOT NULL AUTO_INCREMENT,
    nomeColaborador VARCHAR(50) NOT NULL,
    cargoColaborador VARCHAR(25) NOT NULL,
    telefoneColaborador CHAR(11) NOT NULL,
    crmColaborador VARCHAR(8) NOT NULL,
    statusColaborador BOOLEAN NOT NULL,
    PRIMARY KEY (idColaborador)
);

INSERT INTO `robo`.`colaborador` (nomeColaborador, cargoColaborador, telefoneColaborador, crmColaborador, statusColaborador) VALUES
('Dr. Arnaldo Ribeiro', 'Médico', '11999998888', '123456SP', 1),
('Dra. Beatriz Lima', 'Médica', '21988887777', '654321RJ', 1),
('Dr. Carlos Mendes', 'Médico', '31977776666', '789101MG', 0),
('Dra. Daniela Souza', 'Médica', '41966665555', '112233PR', 1),
('Dr. Eduardo Rocha', 'Médico', '51955554444', '445566RS', 1);

DROP TABLE `robo`.`consulta`;
CREATE TABLE `robo`.`consulta`(
	idConsulta INT NOT NULL AUTO_INCREMENT,
	dataConsulta DATE NOT NULL,
	idCliente INT NOT NULL,
	idAgenda INT NOT NULL,
	idMedico INT NOT NULL,
	localConsulta VARCHAR(100) NOT NULL,
    PRIMARY KEY (idConsulta),
    FOREIGN KEY (idCliente) REFERENCES `robo`.`cliente`(`idCliente`)
);

INSERT INTO `robo`.`consulta` (dataConsulta, idCliente, idAgenda, idMedico, localConsulta) VALUES
('2026-11-05', 1, 10, 1, 'Consultório A - Ala Norte'),
('2026-11-06', 2, 11, 2, 'Consultório B - Ala Sul'),
('2026-11-06', 3, 12, 1, 'Consultório A - Ala Norte'),
('2026-11-10', 4, 13, 4, 'Centro Clínico - Sala 202'),
('2026-10-25', 5, 14, 5, 'Consultório C - Prédio Principal');

DROP TABLE `robo`.`unidade_saude`;
CREATE TABLE `robo`.`unidade_saude`(
	idUnidade_saude INT NOT NULL AUTO_INCREMENT,
    nomeUnidade_saude VARCHAR(50) NOT NULL,
    enderecoUnidade_saude CHAR(8) NOT NULL,
    numero_loteUnidade_saude VARCHAR(20) NOT NULL,
    PRIMARY KEY (idUnidade_saude)
);

INSERT INTO `robo`.`unidade_saude` (nomeUnidade_saude, enderecoUnidade_saude, numero_loteUnidade_saude) VALUES
('Hospital Central de Emergências', '01001000', 'LOTE-001A'),
('UPA Prontomed', '20010010', 'LOTE-002H'),
('Posto de Saúde da Família', '30140030', 'LOTE-089C'),
('Clínica Geral Norte', '40020000', 'LOTE-115R'),
('Centro Médico Infantil', '50710000', 'LOTE-042R');