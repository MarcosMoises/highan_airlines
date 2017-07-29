CREATE DATABASE highan_airlines;
USE highan_airlines;


CREATE TABLE usuario
CREATE TABLE aeronave (
	tipo INT,
    descricao VARCHAR(255),
    total_assentos INT,
    id INT primary key auto_increment
);


CREATE TABLE voo (
	origem varchar(255),
    destino varchar(255),
    hora_partida TIME,
    hora_chegada TIME,
	data_saida DATE,
    data_chegada DATE,
    aviao INT,
    id INT,
    piloto INT,
    

);
