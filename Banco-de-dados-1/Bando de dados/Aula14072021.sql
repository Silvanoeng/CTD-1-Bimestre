USE musimundosv2;

/*1*/

SELECT c.id, CONCAT(c.nome, ' ',c.sobrenome) AS cliente, f.cidade_cobranca
FROM clientes c
INNER JOIN faturas f ON c.id=f.id_cliente
GROUP BY id;

/*2*/

SELECT c.id, c.nome, t.nome
FROM cancoes c
LEFT JOIN tipos_de_arquivo t ON c.id_tipo_de_arquivo=t.id
ORDER BY c.id DESC
LIMIT 4000;

/*3*/

SELECT f.id_cliente, f.data_fatura, c.nome
FROM faturas f
INNER JOIN itens_da_faturas i ON f.id=i.id_fatura
INNER JOIN cancoes c on i.id_cancao=c.id
ORDER BY id_cliente DESC;

/*4.*/

SELECT ar.nome AS artista, al.titulo, c.nome AS cancao
FROM artistas ar
INNER JOIN albuns al ON ar.id=al.id_artista
INNER JOIN cancoes c on al.id=c.id_album
ORDER BY artista DESC;


/*5.*/

SELECT g.nome AS genero, c.nome AS cancao, t.nome AS tipo_de_arquivo
FROM generos g
INNER JOIN cancoes c ON g.id=c.id_genero
LEFT JOIN tipos_de_arquivo t on c.id_tipo_de_arquivo=t.id
ORDER BY genero DESC;











