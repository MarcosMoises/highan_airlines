CREATE DATABASE highan_airlines;
USE highan_airlines;


CREATE TABLE usuario (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	way_to_image VARCHAR(255) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	senha (40) NOT NULL,
	endereco VARCHAR(255) NOT NULL,
	telefone VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL,
	rg VARCHAR(255) NOT NULL,
	nome_completo VARCHAR(255),
	is_func BOOLEAN
);

CREATE TABLE funcionario (
	local_trabalho VARCHAR(255) NOT NULL,
	id_usuario INTEGER NOT NULL,
	funcao VARCHAR(255),
	FOREIGN KEY(id_usuario) REFERENCES usuario(id)
);

CREATE TABLE aeronave (
	way_to_image VARCHAR(255) NOT NULL,
	id INTEGER NOT NULL PRIMARY KEY,
	tipo INTEGER NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  total_assentos INTEGER NOT NULL
);


CREATE TABLE voo (
	id INTEGER NOT NULL PRIMARY KEY,
	origem VARCHAR(255) NOT NULL,
  destino VARCHAR(255) NOT NULL,
  hora_partida TIME NOT NULL,
  hora_chegada TIME NOT NULL,
	data_saida DATE NOT NULL,
  data_chegada DATE NOT NULL,
  id_aeronave INTEGER NOT NULL,
  id_piloto INTEGER NOT NULL,

	FOREIGN KEY(id_piloto) REFERENCES usuario(id),
	FOREIGN KEY(id_aeronave) REFERENCES aeronave(id)
);

CREATE TABLE passagem (
	id_voo INTEGER NOT NULL,
	preco FLOAT(4) NOT NULL,
	nome VARCHAR (255) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(30),
	celular VARCHAR(30),
	id_pass INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,

	FOREIGN KEY (id_voo) REFERENCES voo(id)
);
