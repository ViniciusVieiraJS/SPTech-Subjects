USE sprint2;

CREATE TABLE Área(
idArea int primary key auto_increment,
nomeArea varchar(45));

INSERT INTO Área VALUES
(null, 'Tecnologia'),
(null, 'Saúde'),
(null, 'Financeiro');

CREATE TABLE Curso(
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3),
coordenador varchar(50),
fkArea int,
FOREIGN KEY (fkArea) REFERENCES Área (idArea));

INSERT INTO Curso VALUES
(NULL, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson', null),
(NULL, 'Medicina', 'MED', 'Isabela', null),
(NULL, 'Economia', 'ECO', 'Pablo', null),
(NULL, 'Enfermagem', 'ENF', 'Letícia', null),
(NULL, 'Administração', 'ADM', 'Carla', null),
(NULL, 'Ciências da Computação', 'CCO', 'Marise', null);

UPDATE Curso set fkArea = 1 WHERE idCurso in(1,6);
UPDATE Curso set fkArea = 2 WHERE idCurso in(2,4);
UPDATE Curso set fkArea = 3 WHERE idCurso in(3,5);

SELECT * FROM Curso JOIN Área ON fkArea = idArea;
SELECT * FROM Curso JOIN Área ON fkArea = idArea WHERE nomeArea = 'Tecnologia';

ALTER TABLE Área ADD constraint chkArea check(nomeArea in('Tecnologia', 'Saúde', 'Financeiro'));