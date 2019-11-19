*********** 20 inserts ************

INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,Joao da Silva ,M ,39949601002 ,292864462 , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,Ronaldo Santos ,M ,13487614073 ,190099938 , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,Amanda Ferreira ,F ,44467118063 ,488422218 , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,Marcelo Lima Bastos ,F ,64823938020 ,282207661 , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,Pedro Ferraz ,M ,46244492072 ,164549638 , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,85513726025 ,131847764 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,31249259045 ,106758032 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,31132404096 ,310294964 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,17684187058 ,375036131 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,93117283064 ,193833578 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,42843718007 ,136234124 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,59083907040 ,246637286 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,98840607030 ,415558906 , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,51100609083 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,25023883094 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,02623289093 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,93153771090 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,60841096082 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,04998246011 , , , , , , , , , , , );
INSERT INTO PROFISSIONAL (id_profissional, nome, sexo, CPF, RG, CEP, cidade, bairro, rua, numero, complemento, telefone, cargo)
VALUES (NEXTVAL(id_profissional) ,61015984037 , , , , , , , , , , , );

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
