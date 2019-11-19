*********** 20 inserts ************

INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) , , , , , , , , , , , , );



********* 5 inserts ***********

INSERT INTO PACIENTE (id_secretaria, id_paciente, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone)
VALUES ( , NEXTVAL(id_paciente), , , , , , , , , , , , );



********* 5 inserts ***********

INSERT INTO SECRETARIA (id_profissional, id_secretaria)
VALUES ( , NEXTVAL(id_secretaria));  
  
  
********* 5 inserts ***********
  
INSERT INTO MEDICO (id_profissional, CRM)
VALUES ( , );  
  
  
  
********* 5 inserts ***********
INSERT INTO BIOMEDICO (id_profissional, CRBM)
VALUES ( , );
  
  
  
  
********* 5 inserts ***********
INSERT INTO BIOINFORMATA (id_profissional, id_bioinformata)
VALUES ( ,NEXTVAL(id_bioinformata));
  


********* 5 inserts ***********

INSERT INTO EXAME (id_paciente, CRBM, id_secretaria, data_exame, cod_procedimento, tipo)
VALUES ( , , , , NEXTVAL(cod_procedimento), );
  


********* 5 inserts ***********  
INSERT INTO EQUIPAMENTO (id_equipamento, nome)
VALUES (NEXTVAL(id_equipamento), );
  

********* 5 inserts ***********  
INSERT INTO AMOSTRA (cod_procedimento, cod_amostra, tipo)
VALUES ( , NEXTVAL(cod_amostra), );



********* 5 inserts ***********  
INSERT INTO GENE (id_gene, id_bioinformata, sequencia, nome_gene)
VALUES (NEXTVAL(id_gene), , , );
  
  
 
********* 5 inserts *********** 
INSERT INTO DOENCA (cod_amostra, id_bioinformata, nome, id_doenca)
VALUES ( , , , NEXTVAL(id_doenca));



********* 5 inserts ***********  
INSERT INTO TRATAMENTO (nome, id_tratamento, tratamento)
VALUES ( , NEXTVAL(id_tratamento), );



********* 5 inserts ***********  
INSERT INTO MEDICO_EXAME (CRM, cod_procedimento)
VALUES ( , );


********* 5 inserts ***********
INSERT INTO PACIENTE_TRATAMENTO (id_paciente, id_tratamento, descrição)
VALUES ( , , );
  
 
********* 5 inserts *********** 
INSERT INTO EXAME_EQUIPAMENTO (cod_procedimento, id_equipamento)
VALUES ( , );
