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

DROP TABLE `robo`.`consulta`;
CREATE TABLE `robo`.`consulta`(
	idConsulta INT NOT NULL AUTO_INCREMENT,
	dataConsulta DATE NOT NULL,
	idPaciente INT NOT NULL,
	idAgenda INT NOT NULL,
	idMedico INT NOT NULL,
	localConsulta VARCHAR(100) NOT NULL,
    PRIMARY KEY (idConsulta),
    FOREIGN KEY (idPaciente) REFERENCES `robo`.`paciente`(`idPaciente`),
	FOREIGN KEY (idAgenda) REFERENCES `robo`.`agenda`(`idAgenda`),
    FOREIGN KEY (idMedico) REFERENCES `robo`.`medico`(`idMedico`)
)

