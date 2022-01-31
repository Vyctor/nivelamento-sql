/*
Exemplo de chave primária composta
*/
CREATE DATABASE IBGE;

USE IBGE;

create table cidades(
  CONSTRAINT pk_CidadeEstado PRIMARY KEY(cidade,estado),
  cidade VARCHAR(100),
  estado VARCHAR(2),
  populacao INT,
);