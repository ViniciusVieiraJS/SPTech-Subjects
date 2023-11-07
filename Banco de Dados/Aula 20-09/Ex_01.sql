USE sprint1;

CREATE TABLE Professor(
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40));

INSERT INTO Professor VALUES
(null, 'Vinicius', 'Vieira', 'Matemática', 'Física'),
(null, 'Ana', 'Catarina', 'História', 'Geografia' ),
(null, 'Ester', 'Rocha', 'Artes', 'Ed.Física'),
(null, 'Amanda', 'Martins', 'Química', 'Artes'),
(null, 'Gabriela', 'Silva', 'Ed.Física', 'Geografia'),
(null, 'Kathia', 'Oliveira', 'Física', 'Artes');



CREATE TABLE Disciplina(
idDisc int primary key auto_increment,
nomeDisc varchar(45),
fkProfessor int,
FOREIGN KEY (fkProfessor) REFERENCES Professor(idProfessor));

INSERT INTO Disciplina VALUES
(null, 'Matemática', null),
(null, 'História', null),
(null, 'Artes', null),
(null, 'Química', null),
(null, 'Ed.Física', null),
(null, 'Física', null);

UPDATE Disciplina SET fkProfessor = 1 WHERE idDisc = 1;
UPDATE Disciplina SET fkProfessor = 2 WHERE idDisc = 2;
UPDATE Disciplina SET fkProfessor = 3 WHERE idDisc = 3;
UPDATE Disciplina SET fkProfessor = 4 WHERE idDisc = 4;
UPDATE Disciplina SET fkProfessor = 5 WHERE idDisc = 5;
UPDATE Disciplina SET fkProfessor = 6 WHERE idDisc = 6;

SELECT * FROM Disciplina JOIN Professor ON fkProfessor = idProfessor;


SELECT nome, sobrenome, nomeDisc FROM Professor JOIN Disciplina ON fkProfessor = idProfessor;

SELECT * FROM Disciplina JOIN Professor ON fkProfessor = idProfessor WHERE sobrenome = 'Catarina';

SELECT especialidade1, nomeDisc FROM Disciplina JOIN Professor ON fkProfessor = idProfessor WHERE idProfessor = 4 ORDER BY especialidade1 ASC;

