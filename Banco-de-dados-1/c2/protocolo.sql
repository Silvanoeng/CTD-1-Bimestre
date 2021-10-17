CREATE DATABASE IF NOT EXISTS protocolo_prefeitura;
USE protocolo_prefeitura;

CREATE TABLE requerente (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  senha VARCHAR(50) NOT NULL,
  data_nascimento DATE DEFAULT NULL,
  endereco VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE protocolo (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_requerente SMALLINT(6) NOT NULL,
  assunto VARCHAR(100) NOT NULL,
  descricao TEXT NOT NULL,
  anexo VARCHAR(100) DEFAULT NULL,
  data_abertura DATE NOT NULL,
  situacao VARCHAR(100) DEFAULT NULL,
  data_arquivamento DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_requerente_idx (id_requerente),
  FOREIGN KEY (id_requerente) REFERENCES requerente (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
    CREATE TABLE tramite (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_protocolo SMALLINT(6) NOT NULL,
  data_chegada DATE NOT NULL,
  data_saida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_protocolo_idx (id_protocolo),
  FOREIGN KEY (id_protocolo) REFERENCES protocolo (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
	CREATE TABLE secretaria (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_tramite SMALLINT(6) NOT NULL,
  nome VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_tramite_idx (id_tramite),
  FOREIGN KEY (id_tramite) REFERENCES tramite (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE funcionario (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  senha VARCHAR(50) NOT NULL,
  data_nascimento DATE DEFAULT NULL,
  endereco VARCHAR(100) NOT NULL,
  setor VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE tramite_secretaria (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_secretaria SMALLINT(6) NOT NULL,
  id_funcionario SMALLINT(6) NOT NULL,
  id_protocolo SMALLINT(6) NOT NULL,
  data_chegada DATE NOT NULL,
  data_saida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_secretaria_idx (id_secretaria),
  KEY id_funcionario_idx (id_funcionario),
  KEY id_protocolo_idx (id_protocolo),
  FOREIGN KEY (id_secretaria) REFERENCES secretaria (id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionario (id),
  FOREIGN KEY (id_protocolo) REFERENCES protocolo (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  SELECT*FROM funcionario;
  
  SELECT*FROM requerente;
  
  SELECT*FROM protocolo;
  
  SELECT*FROM tramite;
  
  INSERT INTO requerente
  ( nome, sobrenome, cpf, senha, data_nascimento, endereco)
  VALUES
  ('Silvano', 'Araujo', '10101821374', 'sa13579', 19860125, 'rua Independência n°1010'),
  ('Maria', 'Silva', '20201831274', 'ms02468', 19961220, 'rua Dinarte n°101'),
  ('João', 'Alves', '01821374101', 'ja97531', 19850505, 'rua Telmo Lemos n°202'),
  ('Suelen', 'Pereira', '18210101374', 'sp098376', 19801115, 'rua Tavares n°960'),
  ('Marta', 'Oliveira', '21371010184', 'mo86420', 19761022, 'rua Tiradentes n°589');
  
   INSERT INTO funcionario
  ( nome, sobrenome, cpf, senha, data_nascimento, endereco, setor)
  VALUES
  ('Sandro', 'Araujo', '74101018213', 'sa001321', 19861024, 'rua Jorge Futuro n°1031', 'cadastro'),
  ('Mara', 'Colares', '27202018314', 'mc002123', 19881221, 'rua Padre Simão n°101', 'fiscalização');
  
   INSERT INTO protocolo
  ( id_requerente, assunto, descricao, anexo, data_abertura, situacao)
  VALUES
  (2, 'Revisão do IPTU', 'Solicito a revisão do valor do IPTU do imovel na quadra 11, lote 03. Pois o valor do mesmo esta 3 vezes maior que o do ano passado.', 'WWW.fotoonline.com.br/000545', CAST(now() AS DATE), 'aberto');
  
  INSERT INTO tramite
  ( id_protocolo, data_chegada, data_saida)
  VALUES
  (1, CAST(now() AS DATE), CAST(now() AS DATE));
  
  
  DELETE FROM requerente
  WHERE id=1;
  
  DROP DATABASE protocolo_prefeitura;
  
  
  
  
  