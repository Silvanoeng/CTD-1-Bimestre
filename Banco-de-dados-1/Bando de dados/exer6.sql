UPDATE faturas SET id_cliente= NULL WHERE id_cliente>50;
UPDATE cancoes SET cancoes.id_tipo_de_arquivo=NULL WHERE cancoes.id>850;

SELECT*FROM artistas;

SELECT*FROM albuns;

SELECT ar.id, ar.nome, al.titulo
FROM artistas ar
INNER JOIN albuns al ON ar.id=al.id_artista
ORDER BY ar.id;

SELECT ar.id, ar.nome, al.titulo
FROM artistas ar
LEFT JOIN albuns al ON ar.id=al.id_artista
ORDER BY ar.id;
