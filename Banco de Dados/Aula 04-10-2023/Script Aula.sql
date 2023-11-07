-- AULA 7
-- TIPOS DE ENTIDADES E ATRIBUTOS

-- CRIAR O BANCO DE DADOS

CREATE DATABASE convenio;

USE convenio;

CREATE TABLE funcionario (
idFunc int primary key auto_increment,
nome VARCHAR(45),
emailP VARCHAR (45),-- + emailS = atributo multivalorado
emailS varchar(45),
fkSuper int,
FOREIGN KEY (fkSuper) references funcionario(idFunc));

-- SUPERVISOR
INSERT INTO funcionario (nome, emailP) VALUES
('Jack', 'jack@titanic.com');

INSERT INTO funcionario VALUES
(null, 'Rose', 'rose@titanic.com', null, 1);

SELECT * FROM funcionario as func
JOIN funcionario as sup 
ON func.fkSuper = sup.idFunc;

CREATE TABLE dependente(
idDep int,
fkFunc int,
CONSTRAINT fkDepFunc foreign key (fkFunc) REFERENCES funcionario(idFunc),
nome varchar(45), -- + sobrenome = atributo composto
sobrenome varchar(45),
parentesco varchar(45),
dtNasc date,
primary key (idDep, fkFunc));

INSERT INTO dependente VALUES
(1, 1, 'Mary', 'Darkson', 'prima', '2000-10-13'),
(2, 1, 'Monroe', 'Darkson', 'irmã', '2010-10-13'),
(1, 2, 'Cal', 'Morse', 'marido', '1955-10-13');

SELECT f.nome as NomeFuncionario,
s.nome as NomeSuper,
d.nome as NomeDependente
FROM funcionario as f
JOIN funcionario as s
ON f.fkSuper = s.idFunc
JOIN dependente as d
ON f.idFunc = d.fkFunc;