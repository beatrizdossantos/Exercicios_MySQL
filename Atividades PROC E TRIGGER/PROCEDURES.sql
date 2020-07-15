USE db_Mundo

CREATE PROCEDURE insere_especie (@nome VARCHAR(30), @classe VARCHAR(30))
AS
INSERT INTO tb_especie (nome, classe) 
VALUES (@nome, @classe)


CREATE PROCEDURE le_especie (@nome VARCHAR(30))
AS
SELECT * FROM tb_especie WHERE nome=@nome


CREATE PROCEDURE le_todas_especies
AS
SELECT * FROM tb_especie


CREATE PROCEDURE atualiza_especie (@nome VARCHAR(30), @classe VARCHAR(30), @idEspecie INT)
AS
UPDATE tb_especie SET nome=@nome, classe=@classe WHERE idEspecie=@idEspecie


CREATE PROCEDURE deleta_especie (@idEspecie INT)
AS
DELETE FROM tb_especie WHERE idEspecie=@idEspecie


--PARA EXECUTAR
EXECUTE insere_especie 'gato', 'mamíferos'

EXECUTE le_especie 'gato' 

EXECUTE le_todas_especies

EXECUTE atualiza_especie 'cachorro', 'caninos', 1

EXECUTE deleta_especie 1
