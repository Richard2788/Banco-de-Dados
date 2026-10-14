-- Criação do banco de dados (opcional)
CREATE DATABASE IF NOT EXISTS `escola`;
USE `escola`;

-- Criação da tabela 'aluno'
DROP TABLE IF EXISTS `aluno`;

CREATE TABLE `aluno` (
  `idAluno` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeAluno` VARCHAR(55) DEFAULT NULL,
  `cpfAluno` VARCHAR(14) DEFAULT NULL,
  `telAluno` VARCHAR(15) DEFAULT NULL,
  `enderecoAluno` VARCHAR(8) DEFAULT NULL,
  `data_nascAluno` DATE DEFAULT NULL,
  `nome_resAluno` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Inserção dos dados
INSERT INTO `aluno` (`idAluno`, `nomeAluno`, `cpfAluno`, `telAluno`, `enderecoAluno`, `data_nascAluno`, `nome_resAluno`) 
VALUES (1, 'Richard', '123.433.544-54', '(32) 13233-5455', '86049-65', '2023-08-26', 'Batenara');

SHOW TABLES FROM escola;
GRANT ALL PRIVILEGES ON escola.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
