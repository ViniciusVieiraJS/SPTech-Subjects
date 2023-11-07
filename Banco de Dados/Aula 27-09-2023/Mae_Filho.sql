CREATE TABLE Pessoa(
idpessoa int primary key,
nome varchar(45),
CPF char(11),
fkMae int,
FOREIGN KEY (fkMae) references Pessoa (idpessoa));

INSERT INTO Pessoa VALUES
(1, 'Vinicius', '42291417851', Null),
(2, 'Nacélia', '28394532942', Null);

UPDATE Pessoa set fkMae = 2 WHERE idpessoa = 1;

SELECT * FROM Pessoa as FILHO Join PESSOA as Mãe ON filho.fkMae = Mãe.idpessoa;

ALTER TABLE Pessoa RENAME COLUMN fkMae to fkPessoa;

SELECT * FROM Pessoa as FILHO Join PESSOA as Mãe ON filho.fkPessoa = Mãe.idpessoa;

INSERT INTO Pessoa VALUES
(3, 'Guiherme', '42234592845', 2);

SELECT * FROM Pessoa as FILHO Join PESSOA as Mãe ON filho.fkPessoa = Mãe.idpessoa;

UPDATE Pessoa set fkPessoa = 4 WHERE idpessoa = 2;

INSERT INTO Pessoa VALUES

(4, 'Maria', '45592839413', Null);


SELECT * FROM Pessoa as FILHO Join PESSOA as Mãe ON filho.fkPessoa = Mãe.idpessoa;
