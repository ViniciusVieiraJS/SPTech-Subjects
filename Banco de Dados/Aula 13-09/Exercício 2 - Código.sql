USE Sprint2;

CREATE TABLE Musica(
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40));


INSERT INTO Musica VALUES
(Null, 'Got me Wrong', 'Alice in Chains', 'Grunge'),
(Null, 'Brother', 'Alice in Chains', 'Grunge'),
(Null, 'Numb', 'Linkin Park', 'Nu Metal'),
(Null, 'Faint', 'Linkin Park', 'Nu Metal'),
(Null, 'Duvet', 'Bôa', 'Rock Alternativo'),
(Null, 'Fool', 'Bôa', 'Rock Alternativo');

CREATE TABLE Album(
idAlbum int primary key auto_increment,
nome varchar(40),
tipo varchar(10),
dtLancamento DATE,
constraint chkTipo check (Tipo in('Físico', 'Digital')));

INSERT INTO Album VALUES
(Null, 'Sap', 'Físico', '1992-02-04'),
(Null, 'Meteora', 'Digital', '2003-03-25'),
(Null, 'Twilight', 'Físico', '2001-03-21');

SELECT * FROM Musica;

SELECT * FROM Album;

ALTER TABLE Musica ADD COLUMN fkAlbum int;

ALTER TABLE Musica ADD constraint fkA foreign key (fkAlbum)
	references Album(idAlbum);

UPDATE Musica set fkAlbum = 1 WHERE idMusica in(1,2);
UPDATE Musica SET fkAlbum = 2 WHERE idMusica in(3,4);
UPDATE Musica SET fkAlbum = 3 WHERE idMusica in(5,6);

SELECT * FROM Musica JOIN Album ON fkAlbum = idAlbum;

SELECT titulo, nome FROM Musica JOIN Album ON fkAlbum = idAlbum;

SELECT * FROM Musica JOIN Album ON fkAlbum = idAlbum WHERE tipo = 'Físico'; 









