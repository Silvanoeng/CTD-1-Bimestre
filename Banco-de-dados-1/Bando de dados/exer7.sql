CREATE DATABASE IF NOT EXISTS protocoloTeste;
USE protocoloTeste;

CREATE TABLE requerente (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  senha VARCHAR(50) NOT NULL,
  dataNascimento DATE DEFAULT NULL,
  endereco VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE cpf (
  id_requerente SMALLINT(6) NOT NULL UNIQUE,
  cpf TINYINT NOT NULL UNIQUE,
  KEY id_requerente_idx (id_requerente),
  FOREIGN KEY (id_requerente) REFERENCES `requerente` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE protocolo (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_requerente SMALLINT(6) NOT NULL UNIQUE,
  assunto VARCHAR(100) NOT NULL,
  descricao TEXT NOT NULL,
  anexo VARCHAR(100) DEFAULT NULL,
  dataAbertura DATE NOT NULL,
  situacao VARCHAR(100) DEFAULT NULL,
  dataArquivamento DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_requerente_idx (id_requerente),
  FOREIGN KEY (id_requerente) REFERENCES `requerente` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
    CREATE TABLE tramite (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_protocolo SMALLINT(6) NOT NULL UNIQUE,
  dataChegada DATE NOT NULL,
  dataSaida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_protocolo_idx (id_protocolo),
  FOREIGN KEY (id_protocolo) REFERENCES `protocolo` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
	CREATE TABLE secretaria (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_tramite SMALLINT(6) NOT NULL,
  nome VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_tramite_idx (id_tramite),
  FOREIGN KEY (id_tramite) REFERENCES `tramite` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
	CREATE TABLE tramite_secretaria (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_secretaria SMALLINT(6) NOT NULL,
  dataChegada DATE NOT NULL,
  dataSaida DATE DEFAULT NULL,
  despacho VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY id_secretaria_idx (id_secretaria),
  FOREIGN KEY (id_secretaria) REFERENCES `secretaria` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
  CREATE TABLE funcionario (
  id SMALLINT(6) NOT NULL AUTO_INCREMENT,
  id_tramite_secretaria SMALLINT(6) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  cpf TINYINT NOT NULL,
  senha VARCHAR(50) NOT NULL,
  dataNascimento DATE DEFAULT NULL,
  endereco VARCHAR(100) NOT NULL,
  setor VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  KEY id_tramite_secretaria_idx (id_tramite_secretaria),
  FOREIGN KEY (id_tramite_secretaria) REFERENCES `tramite_secretaria` (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  