SELECT * from  generos;

SELECT * from  cancoes;

SELECT * from  clientes;

SELECT * from  faturas;

SELECT g.id, g.nome, COUNT(c.id) AS qtd_cancoes
FROM generos g
INNER JOIN cancoes c ON g.id = c.id_genero
GROUP BY id_genero
ORDER BY qtd_cancoes DESC;

SELECT g.id, g.nome, COUNT(c.id) AS qtd_cancoes
FROM generos g
INNER JOIN cancoes c ON g.id = c.id_genero
GROUP BY id_genero
HAVING qtd_cancoes >10;

SELECT c.id, c.pais, f.pais_cobranca,  COUNT(c.id) AS quant_cliente, SUM(f.valor_total) AS soma_fatura_pais
FROM clientes c
INNER JOIN faturas f ON c.id = f.id_cliente
GROUP BY pais
ORDER BY quant_cliente DESC
LIMIT 7;

SELECT* FROM artistas;

SELECT* FROM albuns;

SELECT* FROM itens_da_faturas;

SELECT* FROM cancoes;

SELECT* FROM faturas;

SELECT ar.nome, al.titulo
FROM artistas ar
INNER JOIN albuns al ON ar.id=al.id_artista
WHERE nome="Queen";

SELECT ar.nome, al.titulo
FROM artistas ar
INNER JOIN albuns al ON ar.id=al.id_artista
WHERE nome="Simply Red";

SELECT c.id, c.nome, f.id_cancao, COUNT(f.id_cancao)
FROM cancoes c
INNER JOIN itens_da_faturas f ON c.id=f.id_cancao
WHERE nome="Overdose";

CREATE VIEW FATURAS_NACIONAIS AS
SELECT f.id AS id_da_fatura, f.id_cliente, c.nome AS nome_do_cliente, c.sobrenome  AS sobrenome_do_cliente, f.valor_total AS total_da_fatura
FROM clientes c
INNER JOIN faturas f ON c.id=f.id_cliente
WHERE pais_cobranca="Argentina";

SELECT * FROM faturas_nacionais;


CREATE VIEW LATINOS AS
SELECT ar.nome AS nome_do_artista, al.titulo AS título_do_álbum, c.nome AS nome_da_música, c.id_genero
FROM artistas ar
INNER JOIN albuns al ON ar.id=al.id_artista
INNER JOIN cancoes c ON al.id=c.id_album
WHERE id_genero="7";

SELECT * FROM musimundosv2.artistas;