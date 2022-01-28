CREATE DATABASE livraria;

USE livraria;

CREATE TABLE livros(
  nome VARCHAR(100),
  nome_autor VARCHAR(100),
  sexo_autor chaCHARr(1),
  quantidade_paginas INT(5),
  nome_editora VARCHAR(100),
  valor_livro NUMERIC(15,2),
  uf_editora VARCHAR(2),
  ano_publicacao INT(4)
);

INSERT INTO livros VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.90,'RJ',2009);

INSERT INTO livros VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.90,'RJ',2009),('SQL para Leigos','Joáo Nunes','M',450,'Addison',98,'SP',2018),('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008),('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018),('Hábitos saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),('A casa marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011),('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018),('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);

/* Trazer todos os dados*/
SELECT * FROM livros;

/* Trazer o nome do livro e o nome da editora */
SELECT nome, nome_editora FROM livros;

/* Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */
SELECT nome, uf_editora FROM livros WHERE sexo_autor="M";

/* Trazer o nome do livro e o numero de paginas dos livros publicados por autores do sexo feminino*/
SELECT nome, quantidade_paginas FROM livros WHERE sexo_autor="F";

/* Trazer os valores dos livros das editoras de Sáo Paulo*/
SELECT valor_livro FROM livros WHERE uf_editora="SP";

/* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por Sáo Paulo ou Rio de Janeiro*/
SELECT nome_autor, sexo_autor 
FROM livros 
WHERE sexo_autor='M' 
AND (uf_editora = 'SP' OR  uf_editora = 'RJ');
