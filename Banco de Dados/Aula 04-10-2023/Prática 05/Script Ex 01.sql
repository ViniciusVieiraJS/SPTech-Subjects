create database Pet;

USE Pet;

CREATE TABLE cliente(
idCliente int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telFixo varchar(45),
telMovel varchar(45),
rua varchar(45),
bairro varchar(45));

CREATE TABLE pet(
idPet int primary key auto_increment,
tipo varchar(45),
nome varchar (45),
raça varchar(45),
dtNasc DATE,
fkCliente int,
FOREIGN KEY (fkCliente) references cliente (idCliente))
auto_increment = 101;

INSERT INTO cliente VALUES
(null, 'Vinicius', 'Rocha', null, '11953297491', 'Rua Ângelo de Cândia, 1432', 'São Mateus'),
(null, 'Ester', 'Rocha', null, '11953297491', 'Rua Barueri, 102', 'Vila José'),
(null, 'Isabela', 'Franco', null, '31999267565', 'Rua João Miguel Jarra, 252', 'Vila Madalena'),
(null, 'Iolanda', 'Franco', null, '31976843948', 'Rua João Miguel Jarra, 252', 'Vila Madalena');


INSERT INTO pet VALUES
(Null, 'Cachorro', 'Freddy', 'Dachshund', '2023-02-20', 1),
(Null, 'Gato', 'Lily', 'Persa', '2022-08-30', 2),
(Null, 'Cachorro', 'Rex', 'Shiba Inu', '2020-07-08', 3),
(Null, 'Gato', 'Miau', 'Frajola', '2019-06-20', 4);



SELECT * FROM cliente;

SELECT * FROM pet;

SELECT nome, dtNasc FROM pet;

SELECT * FROM pet order by nome asc;

SELECT * FROM cliente order by bairro desc;

SELECT * FROM pet WHERE nome like 'F%';

SELECT * FROM cliente WHERE sobrenome = 'Rocha';

UPDATE cliente SET telMovel = '11983547384' WHERE idCliente = 1;

SELECT * FROM cliente;

SELECT * FROM cliente JOIN pet ON idCliente = fkCliente;

SELECT * FROM cliente JOIN pet ON idCliente = fkCliente WHERE cliente.nome = 'Isabela';

DELETE FROM pet WHERE idPet = 102;

SELECT * FROM pet;

DROP TABLE pet;

DROP TABLE cliente;







