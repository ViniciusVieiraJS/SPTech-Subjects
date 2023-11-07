CREATE DATABASE Sprint2;

USE Sprint2;

CREATE TABLE País(
idPais int primary key auto_increment,
nome varchar(40),
capital varchar(40));

INSERT INTO País VALUES
(Null, 'Brasil', 'Brasília'),
(Null, 'Argentina', 'Buenos Aires'),
(Null, 'França', 'Paris'),
(Null, 'Japão', 'Tokyo');

CREATE TABLE Atleta(
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int);

INSERT INTO Atleta VALUES
(Null, 'Vinicius', 'Tênis de Mesa', 10),
(Null, 'Amanda', 'Tenis de Mesa', 12),
(Null, 'Ana', 'Futebol', 8),
(Null, 'Kátia', 'Futebol', 12),
(Null, 'Ketlen', 'Basquete', 15),
(Null, 'Daniel', 'Basquete', 13),
(Null, 'Ester', 'Vôlei', 14),
(Null, 'Gabriela', 'Vôlei', 17);

ALTER TABLE Atleta ADD COLUMN fkPaís int;

ALTER TABLE Atleta ADD CONSTRAINT fkP foreign key (fkPaís)
	references País(idPais);
    
UPDATE Atleta SET fkPaís = 1 WHERE idAtleta in(1,3);
UPDATE Atleta SET fkPaís = 2 WHERE idAtleta in(2,4);
UPDATE Atleta SET fkPaís = 3 WHERE idAtleta in(5,6);
UPDATE Atleta SET fkPaís = 4 WHERE idAtleta in(7,8);

SELECT * FROM Atleta;


SELECT * FROM País JOIN Atleta ON fkPaís = idPais;
SELECT País.nome, Atleta.nome FROM País JOIN Atleta ON fkPaís = idPais;
SELECT * FROM País JOIN Atleta ON fkPaís = idPais WHERE capital = 'Tokyo'; 