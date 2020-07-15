CREATE DATABASE db_Mundo

USE db_Mundo

CREATE TABLE tb_especie (
    idEspecie INT PRIMARY KEY IDENTITY,
    nome VARCHAR(30),
    classe VARCHAR(30)
)

CREATE TABLE tb_animal (
	idAnimal INT PRIMARY KEY IDENTITY,
    sexo CHAR(1),
	idEspecie INT,
	CONSTRAINT fk_EspAnimal FOREIGN KEY (idEspecie) REFERENCES tb_especie (idEspecie)

)