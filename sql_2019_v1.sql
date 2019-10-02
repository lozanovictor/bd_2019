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
  FOREIGN KEY (id_profissional) FROM PROFISIONAL (id_Profissional))
  
  
CREATE TABLE MEDICO (
  id_profissional INTEGER NOT NULL,
  CBM INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) FROM PROFISIONAL (id_Profissional))
  
  
CREATE TABLE BIOMEDICO (
  id_profissional INTEGER NOT NULL,
  CRBM INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) FROM PROFISIONAL (id_Profissional))
  
  
CREATE TABLE BIOINFORMATA (
  id_profissional INTEGER NOT NULL,
  id_bioinformata INTEGER NOT NULL,
  FOREIGN KEY (id_profissional) FROM PROFISIONAL (id_Profissional))
  
CREATE TABLE EXAME (
  id_paciente INTEGER NOT NULL,
  CRBM INTEGER NOT NULL,
  id_secretaria INTEGER NOT NULL,
  data_exame TIMESTAMP,
  cod_procedimento INTEGER NOT NULL,
  tipo VARCHAR(100) NOT NULL,
  PRIMARY KEY (cod_procedimento)
  FOREIGN KEY (CRBM) FROM BIOMEDICO (id_Profissional))
  
Equipamento = (id_equipamento, nome)
Amostra = (cod_procedimento *ce*, cod_amostra, tipo)
Gene = (id_bioinformata *ce*, sequência)
Doenças = (cod_amostra *ce*, id_bioinformata *ce*, nome, CID)
Tratamentos = (nome, id_tratamento)
Medico_exame = (CBM *ce*, cod_procedimento *ce*)
Paciente_tratamento = (id_paciente *ce*, id_tratamento *ce*, descrição)
Exame_equipamento = (cod_procedimento *ce*, id_equipamento *ce*)
