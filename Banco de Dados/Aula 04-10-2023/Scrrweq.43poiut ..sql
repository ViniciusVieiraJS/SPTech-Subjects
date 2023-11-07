CREATE DATABASE PraticaFuncionario;

USE PraticaFuncionario;

CREATE TABLE Setor(
idSetor int primary key auto_increment,
nome varchar(45),
andar varchar(45));

CREATE TABLE Funcionario(
idFuncionario int primary key auto_increment,
nome varchar(45),
telefone varchar(45),
salario FLOAT,
fkSetor int,
FOREIGN KEY (fkSetor) REFERENCES Setor (idSetor));

CREATE TABLE Acompanhante(
idAcompanhante int,
fkFuncionario int,
FOREIGN KEY (fkFuncionario) REFERENCES Funcionario (idFuncionario),
nome varchar(45),
relação varchar(45),
dtNasc DATE,
primary key (idAcompanhante, fkFuncionario));

INSERT INTO Setor VALUES
(null, 'Finanças', '5'),
(null, 'T.I', '10');

INSERT INTO Funcionario VALUES
(null, 'Vinicius', '11953297491', 1500.50, 2),
(null, 'Isabela', '31999267565', 3400.00, 1),
(null, 'Gustavo', '1197568329', 2400.30, 2),
(null, 'Larissa', '11943856483', 1854.39, 1);

INSERT INTO Acompanhante VALUES
(1, 1, 'Nacélia', 'Mãe', '1973-11-05'),
(2, 2, 'Frederico', 'Pai', '1980-06-10'),
(3, 3, 'Julia', 'Namorada', '2003-03-21'),
(4, 4, 'Carlos', 'Namorado', '1998-07-14');

SELECT * FROM Setor;
SELECT * FROM Funcionario;
SELECT * FROM Acompanhante;

SELECT * FROM Setor JOIN Funcionario ON idSetor = fkSetor;
SELECT * FROM Setor JOIN Funcionario ON idSetor = fkSetor WHERE Setor.nome = 'Finanças';
SELECT * FROM Funcionario JOIN Acompanhante ON idFuncionario = 







