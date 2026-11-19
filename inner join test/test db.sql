CREATE DATABASE test;

-- create
CREATE TABLE `test`.`cliente` (
  idCliente INTEGER PRIMARY KEY NOT NULL,
  nome varchar(25) NOT NULL,
  tel char(14) NOT NULL,
  endereco varchar(9) NOT NULL
);

-- insert
INSERT INTO `test`.`cliente` VALUES (1, 'Clark', '(42)32434-5675', '21032-433');
INSERT INTO `test`.`cliente` VALUES (2, 'Dave', '(43)22104-4563', '92343-545');
INSERT INTO `test`.`cliente` VALUES (3, 'Ava', '(42)40293-5646', '30493-454');

-- create
CREATE TABLE `test`.`pedido` (
  idPedido INTEGER PRIMARY KEY NOT NULL,
  cod char(3) NOT NULL,
  valorTotal FLOAT NOT NULL,
  idCliente INT NOT NULL,
  FOREIGN KEY(idCliente) REFERENCES cliente(idCliente)
);
DROP TABLE `test`.`cliente`;

-- insert
INSERT INTO `test`.`pedido` VALUES (1, '001', '1234.52', 1);
INSERT INTO `test`.`pedido` VALUES (2, '002', '443.42', 3);
INSERT INTO `test`.`pedido` VALUES (3, '003', '1021.21', 2);

-- fetch 
SELECT C.nome, C.tel, P.cod, P.valorTotal 
FROM `test`.`cliente` C 
INNER JOIN `test`.`pedido` P 
ON C.idCliente = P.idCliente;

SELECT * from `test`.`pedido`;
SELECT * from `test`.`cliente`;
