CREATE TABLE PROFISSIONAL (
  id_profissional INTEGER NOT NULL,
  nome VARCHAR (100) NOT NULL, 
  sexo VARCHAR (1) NOT NULL, 
  CPF VARCHAR (11) NOT NULL, 
  RG VARCHAR (9) NOT NULL, 
  CEP VARCHAR (8) NOT NULL, 
  cidade VARCHAR (50) NOT NULL, 
  bairro VARCHAR (50) NOT NULL, 
  rua VARCHAR (50) NOT NULL, 
  numero INTEGER NOT NULL,
  complemento VARCHAR (100), 
  telefone VARCHAR(11) NOT NULL, 
  cargo VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_profissional))
  

CREATE TABLE PACIENTE (
  id_secretaria INTEGER NOT NULL,
  id_paciente INTEGER NOT NULL, 
  nome VARCHAR (100) NOT NULL, 
  sexo VHARCHAR (1) NOT NULL, 
  CPF VARCHAR (11) NOT NULL,
  RG VARCHAR (9) NOT NULL, 
  CEP VARCHAR (8) NOT NULL,
  cidade VARCHAR (50) NOT NULL,
  bairro VARCHAR (50) NOT NULL, 
  rua VARCHAR (50) NOT NULL,
  numero INTEGER,
  complemento VARCHAR (100),
  telefone VARCHAR(11) NOT NULL,
  PRIMARY KEY (id_paciente))
  

CREATE TABLE SECRETARIA (
  id_profissional INTEGER NOT NULL,
  id_secretaria INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) REFERENCES PROFISIONAL (id_Profissional))
  
  
CREATE TABLE MEDICO (
  id_profissional INTEGER NOT NULL,
  CBM INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) REFERENCES PROFISIONAL (id_Profissional))
  
  
CREATE TABLE BIOMEDICO (
  id_profissional INTEGER NOT NULL,
  CRBM INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) REFERENCES PROFISIONAL (id_Profissional))
  
  
CREATE TABLE BIOINFORMATA (
  id_profissional INTEGER NOT NULL,
  id_bioinformata INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) REFERENCES PROFISIONAL (id_Profissional))
  
CREATE TABLE EXAME (
  id_paciente INTEGER NOT NULL,
  CRBM INTEGER NOT NULL,
  id_secretaria INTEGER NOT NULL,
  data_exame TIMESTAMP,
  cod_procedimento INTEGER NOT NULL,
  tipo VARCHAR(100) NOT NULL,
  PRIMARY KEY (cod_procedimento)
  FOREIGN KEY (CRBM) REFERENCES BIOMEDICO (id_Profissional))
  
CREATE TABLE EQUIPAMENTO (
  id_equipamento INTEGER NOT NULL,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_equipamento))
  
CREATE TABLE AMOSTRA (
  cod_procedimento INTEGER NOT NULL,
  cod_amostra INTEGER NOT NULL,
  tipo VARCHAR (50) NOT NULL,
  PRIMARY KEY (cod_amostra),
  FOREIGN KEY (cod_procedimento) REFERENCES EXAME (cod_procedimento))
  
CREATE TABLE GENE (
  id_bioinformata INTEGER NOT NULL,
  sequência LONGTEXT NOT NULL,
  nome_gene VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_bioinformata) REFERENCES BIOINFORMATA (id_bioinformata))
  
CREATE TABLE DOENCA (
  cod_amostra INTEGER NOT NULL,
  id_bioinformata INTEGER NOT NULL,
  nome VARCHAR (100),
  CID INTEGER NOT NULL,
  PRIMARY KEY (CID),
  FOREIGN KEY (cod_amostra) REFERENCES AMOSTRA (cod_amostra),
  FOREIGN KEY (id_bioinformata) REFERENCES BIOINFORMATA (id_bioinformata))
  
CREATE TABLE TRATAMENTO (
  nome VARCHAR(50),
  id_tratamento INTEGER NOT NULL,
  tratamento VARCHAR(500),
  PRIMARY KEY (id_tratamento))
  
CREATE TABLE MEDICO_EXAME (
  CRM INTEGER NOT NULL,
  cod_procedimento INTEGER NOT NULL,
  FOREIGN KEY (CRM) REFERENCES MEDICO (CRM),
  FOREIGN KEY (cod_procedimento) REFERENCES EXAME (cod_procedimento))

CREATE TABLE PACIENTE_TRATAMENTO (
  id_paciente INTEGER NOT NULL,
  id_tratamento INTEGER NOT NULL,
  descrição VARCHAR(400) NOT NULL,
  FOREIGN KEY (id_paciente) REFERENCES PACIENTE (id_paciente),
  FOREIGN KEY (id_tratamento) REFERENCES TRATAMENTO (id_tratamento))
  
CREATE TABLE EXAME_EQUIPAMENTO (
  cod_procedimento INTEGER NOT NULL,
  id_equipamento INTEGER NOT NULL,
  FOREIGN KEY (cod_procedimento) REFERENCES EXAME (cod_procedimento)
  FOREIGN KEY (id_equipamento) REFERENCES EQUIPAMENTO (id_equipamento))
