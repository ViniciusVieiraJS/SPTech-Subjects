use sprint02;

CREATE TABLE pessoa(
idPessoa int primary key auto_increment,
nome varchar(45),
dtNasc DATE,
profissão varchar(45));

CREATE TABLE gasto(
idGasto int primary key auto_increment,
dataGasto DATE,
valor FLOAT,
descrição varchar(45),
fkPessoa INT,
FOREIGN KEY (fkPessoa) REFERENCES pessoa (idPessoa));

INSERT INTO pessoa VALUES
(null, 'Vinicius', '1999-07-08', 'Estudante'),
(null, 'Isabela', '2001-10-31', 'Estudante'),
(null, 'Guilherme', '1997-04-14', 'Motorista'),
(null, 'Nacélia', '1973-11-05', 'Professora');

INSERT INTO gasto VALUES
(null, '2023-10-02', 97.00, 'Uber', 1),
(null, '2022-04-02', '234.33', 'Compra de roupas', 2),
(null, '2019-04-20', '1560.42', 'Geladeira', 3),
(null, '2015-05-10', '4500.00', 'Moto', 4);

SELECT * FROM pessoa;

SELECT * FROM gasto;

SELECT * FROM pessoa JOIN gasto ON idPessoa = fkPessoa WHERE profissão = 'Estudante';

SELECT * FROM pessoa JOIN gasto ON idPessoa = fkPessoa;

SELECT * FROM pessoa JOIN gasto on idPessoa = fkPessoa WHERE idPessoa = 1;

UPDATE gasto SET valor = '2000.45' WHERE idGasto = 1;
UPDATE gasto SET valor = '284.56' WHERE idGasto = 2;
UPDATE gasto SET valor = '5045.78' WHERE idGasto = 3;
UPDATE gasto SET valor = '10.25' WHERE idGasto = 4;

DELETE FROM gasto WHERE idGasto = 3;





