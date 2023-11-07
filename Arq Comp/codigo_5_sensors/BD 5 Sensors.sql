CREATE DATABASE arduino;
USE arduino;

CREATE TABLE sensores(
dht11_umidade float,
dht11_temperatura float,
luminosidade float,
lm35_temperatura float,
chave float);

DROP TABLE sensores;


SELECT * FROM sensores;