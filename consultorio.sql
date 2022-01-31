CREATE DATABASE consultorio;

USE consultorio;

CREATE TABLE paciente(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome CHAR(30),
  sexo VARCHAR(1),
  email VARCHAR(30),
  nascimento DATE
);

CREATE TABLE medico(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(30),
  sexo CHAR(1),
  especialidade VARCHAR(30),
  funcionario ENUM('S', 'N')
);

CREATE TABLE hospital(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(30),
  bairro VARCHAR(30),
  cidade VARCHAR(30),
  estado CHAR(2)
);

CREATE TABLE consulta(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pacienteId INT,
  medicoId INT,
  hospitalId INT,
  data DATETIME,
  diagnostico VARCHAR(100)
);

CREATE TABLE internacao(
  id INT PRIMARY KEY AUTO_INCREMENT,
  entrada DATETIME,
  quarto INT,
  saida DATETIME,
  observacoes VARCHAR(50),
  consultaId INT UNIQUE
);

ALTER TABLE consulta ADD CONSTRAINT fk_consulta_paciente FOREIGN KEY (pacienteId) REFERENCES paciente(id);

ALTER TABLE consulta ADD CONSTRAINT fk_consulta_medico FOREIGN KEY (medicoId) REFERENCES medico(id);

ALTER TABLE consulta ADD CONSTRAINT fk_consulta_hospital FOREIGN KEY (hospitalId) REFERENCES hospital(id);

ALTER TABLE internacao ADD CONSTRAINT fk_internacao_consulta FOREIGN KEY (consultaId) REFERENCES consulta(id);