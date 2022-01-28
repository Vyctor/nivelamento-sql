/* Criando banco de dados */
CREATE DATABASE projeto;

USE projeto;

CREATE TABLE cliente(
  nome VARCHAR(30),
  sexo CHAR(1),
  email VARCHAR(30),
  cpf VARCHAR(11),
  telefone VARCHAR(30),
  endereco VARCHAR(100)
);

/* Primeira forma de inserção no banco de dados */
INSERT INTO cliente VALUES('Vyctor','M','dev.vyctor@gmail.com', '706621184','(64) 99329-1101','Rua RG-8 Quadra 17 Lote 32B');

INSERT INTO cliente VALUES('Vynícius', 'M', 'vynicius@gmail.com', '123145691', '(64) 99255-1899', 'Rua RG-8 Quadra 17 Lote 32B');

INSERT INTO cliente VALUES('Sueli', 'F', 'sueliguimaraes@gmail.com', '886906191', '(64) 99329-1101', 'Rua RG-8 Quadra 17 Lote 32B');

/* Segunda forma de inserção */
INSERT INTO cliente(nome, sexo, endereco, telefone, cpf) VALUES('Lilian', 'F', 'Senador Soares - Tijuca', '947765441', '1231231231');

/* Terceira forma de inserção */
INSERT INTO cliente VALUES('Vynícius', 'M', 'vynicius@gmail.com', '123145691', '(64) 99255-1899', 'Rua RG-8 Quadra 17 Lote 32B'),('Sueli', 'F', 'sueliguimaraes@gmail.com', '886906191', '(64) 99329-1101', 'Rua RG-8 Quadra 17 Lote 32B'),('Vyctor','M','dev.vyctor@gmail.com','706621184','(64) 99329-1101','Rua RG-8 Quadra 17 Lote 32B');

DROP TABLE cliente;

/* Projeção - Filtro e Junção */

/* Projeção */
SELECT nome, telefone FROM cliente;

/* Filtro */
SELECT nome, endereco, telefone FROM cliente WHERE sexo = 'F';

/* Utilizando o LIKE */
SELECT nome, endereco, telefone FROM cliente WHERE endereco LIKE = 'RG-8';


/* Operadores Lógicos */

/* OR */
SELECT nome, sexo, endereco FROM cliente
WHERE
sexo = 'M' OR endereco LIKE '%RG-8%';
/* AND */
SELECT nome, sexo, endereco FROM cliente
WHERE
sexo = 'F' AND endereco LIKE '%RG-8%';

/* Funções de agregações */
SELECT COUNT(*) FROM cliente;

SELECT sexo, COUNT(*) FROM cliente GROUP BY sexo;