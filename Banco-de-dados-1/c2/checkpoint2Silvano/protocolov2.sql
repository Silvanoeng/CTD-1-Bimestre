/*Turma 1 - checkpoint II
Nome: Silvano Araujo Pereira
Como tratado por Slack o banco de dados foi alterado, por esse motivo segue uma foto com o novo modelo.*/

/* Criando o banco de dados */
CREATE DATABASE IF NOT EXISTS protocolo_prefeitura;
/* Selecionando o banco de dados que vou trabalhar */
USE protocolo_prefeitura;

/* Criando a tabela requerente. */
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
  
  /* Criando a tabela protocolo. */
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
  
  /* Criando a tabela tramite entre secretarias. */
  CREATE TABLE tramite_entre_secretarias (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_protocolo SMALLINT(6) NOT NULL,
  secretaria VARCHAR(100) NOT NULL,
  data_chegada DATE NOT NULL,
  data_saida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_protocolo_idx (id_protocolo),
  FOREIGN KEY (id_protocolo) REFERENCES protocolo (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  /* Criando a tabela funcionario. */
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
  
  /* Criando a tabela tramite na secretaria. */
  CREATE TABLE tramite_na_secretaria (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_tramite_entre_secretarias SMALLINT(6) NOT NULL,
  id_funcionario SMALLINT(6) NOT NULL,
  id_protocolo SMALLINT(6) NOT NULL,
  data_chegada DATE NOT NULL,
  data_saida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_tramite_entre_secretarias_idx (id_tramite_entre_secretarias),
  KEY id_funcionario_idx (id_funcionario),
  KEY id_protocolo_idx (id_protocolo),
  FOREIGN KEY (id_tramite_entre_secretarias) REFERENCES tramite_entre_secretarias (id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionario (id),
  FOREIGN KEY (id_protocolo) REFERENCES protocolo (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  /* Inserindo dados na tabela requerente. */
  INSERT INTO requerente
  ( nome, sobrenome, cpf, senha, data_nascimento, endereco)
  VALUES
  ('Silvano', 'Araujo', '10101821374', 'sa13579', 19860125, 'rua Independência n°1010'),
  ('Maria', 'Silva', '20201831274', 'ms02468', 19961220, 'rua Dinarte n°101'),
  ('João', 'Alves', '01821374101', 'ja97531', 19850505, 'rua Telmo Lemos n°202'),
  ('Suelen', 'Pereira', '18210101374', 'sp098376', 19801115, 'rua Tavares n°960'),
  ('Marta', 'Oliveira', '21371010184', 'mo86420', 19761022, 'rua Tiradentes n°589');
  
  /* Inserindo dados na tabela funcionario. */
  INSERT INTO funcionario
  ( nome, sobrenome, cpf, senha, data_nascimento, endereco, setor)
  VALUES
  ('Sandro', 'Araujo', '74101018213', 'sa001321', 19861024, 'rua Jorge Futuro n°1031', 'cadastro'),
  ('Mara', 'Colares', '27202018314', 'mc002123', 19881221, 'rua Padre Simão n°101', 'fiscalização');
  
  /* Inserindo dados na tabela protocolo. */
  INSERT INTO protocolo
  ( id_requerente, assunto, descricao, anexo, data_abertura, situacao)
  VALUES
  (2, 'Revisão do IPTU', 'Solicito a revisão do valor do IPTU do imovel na quadra 11, lote 03. 
  Pois o valor do mesmo esta 3 vezes maior que o do ano passado.', 'WWW.fotoonline.com.br/000545', CAST(now() AS DATE), 'aberto');
  
  /* Inserindo dados na tabela tramite entre secretarias. */
  INSERT INTO tramite_entre_secretarias
  ( id_protocolo, secretaria, data_chegada)
  VALUES
  (1, 'Secretaria de Finanças', CAST(now() AS DATE));
  
  /* Inserindo dados na tabela tramite na secretaria. */
  INSERT INTO tramite_na_secretaria
  ( id_tramite_entre_secretarias, id_funcionario, id_protocolo, data_chegada)
  VALUES
  (1, 2, 1, CAST(now() AS DATE));
  
  /* Atualizando os dados da tabela tramite na secretaria, inserindo dados no id = 1. */
  UPDATE tramite_na_secretaria SET
  data_saida = CAST(now() AS DATE),
  despacho = 'Conforme vistoria in loco, foi possível confirmar que o lote apresenta uma construção nova, 
  a qual representa um acréscimo da área construída, sendo esse o motivo do acréscimo do IPTU.'
  WHERE id = 1;
  
  /* Atualizando uma linha da tabela tramite entre secretarias, inserindo dados na linha de id= 1. */
  UPDATE tramite_entre_secretarias SET
  data_saida = 20210714,
  despacho = 'Para o setor de protocolo, notificar o requerente e posteriormente arquivar.'
  WHERE id = 1;
  
  /* Deletando os dandos da linha de id= 5, da tabela requerente.  */
  DELETE FROM requerente
  WHERE id=5;
  
  /* Realizando uma consulta  relacional, entre a tabela protocolo e tramite na secretaria. */
  SELECT pr.id AS n_protocolo, pr.descricao, pr.data_abertura, tr.data_saida AS data_despacho, tr.despacho
  FROM protocolo pr
  INNER JOIN tramite_na_secretaria tr ON pr.id=tr.id_protocolo;
  
  /* Realizando uma consulta  na tabela funcionario. */
  SELECT id, nome, setor
  FROM funcionario;
     
  SELECT*FROM funcionario;
  
  SELECT*FROM requerente;
  
  SELECT*FROM protocolo;
  
  SELECT*FROM tramite_entre_secretarias;
  
  SELECT*FROM tramite_na_secretaria;
      
  DROP DATABASE protocolo_prefeitura;
  
  