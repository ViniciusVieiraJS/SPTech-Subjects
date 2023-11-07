CREATE DATABASE Treinador;

USE Treinador;

CREATE TABLE Treinador(
idTreinador int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
email varchar(45),
fkVeterano int,
FOREIGN KEY (fkVeterano) REFERENCES Treinador (idTreinador))
auto_increment = 10;

CREATE TABLE Nadador(
idNadador int primary key auto_increment,
nome varchar(45),
estado varchar(45),
dtNasc DATE,
fkTreinador int,
FOREIGN KEY (fkTreinador) REFERENCES Treinador (idTreinador))
auto_increment = 100;

INSERT INTO Treinador (nome, telefone, email) VALUES
('Roberto', '11953297491', 'robertojs@gmail.com');

INSERT INTO Treinador VALUES
(null, 'Vitória', '11983437465', 'vitoriasecret@outlook.com', 10),
(null, 'Gabriela', '11982343246', 'gabrielagabs1@gmail.com', 10);

INSERT INTO Nadador VALUES
(null, 'Vinicius', 'SP', '1999-08-07', 13),
(null, 'Isabela', 'MG', '2001-10-31', 13),
(null, 'Roberta', 'BA', '2003-05-06', 14),
(null, 'Pedro', 'RJ', '1999-10-20', 14),
(null, 'Ester', 'SP', '1999-12-26', 10),
(null, 'Ana', 'PR', '2000-01-10', 10);

SELECT * FROM Treinador;
SELECT * FROM Nadador;

SELECT * FROM Treinador JOIN Nadador ON idTreinador = fkTreinador;

SELECT * FROM Treinador JOIN Nadador ON idTreinador = fkTreinador WHERE treinador.nome = 'Gabriela';

SELECT v.nome as NomeVeterano, o.nome as NomeOrientado FROM Treinador as v JOIN Treinador as o ON v.fkVeterano = o.idTreinador;
