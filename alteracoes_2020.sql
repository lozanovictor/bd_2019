ALTER TABLE EQUIPAMENTO
ADD equip_compra TIMESTAMP,
ADD ultima_manutencao TIMESTAMP,
ADD data_prox_manutencao TIMESTAMP;

CREATE TABLE LAUDO (
    id_laudo INTEGER NOT NULL,
    laudo VARCHAR(400), 
    cod_amostra INTEGER NOT NULL,
    CRBM INTEGER NOT NULL,
    id_equipamento INTEGER NOT NULL,
    PRIMARY KEY (id_laudo),
    FOREIGN KEY (cod_amostra) REFERENCES AMOSTRA (cod_amostra),
    FOREIGN KEY (CRBM) REFERENCES BIOMEDICO (CRBM),
    FOREIGN KEY (id_equipamento) REFERENCES EXAME_EQUIPAMENTO (id_equipamento),
    FOREIGN KEY (cod_procedimento) REFERENCES EXAME_EQUIPAMENTO (cod_procedimento));
    
ALTER TABLE PACIENTE
    ALTER COLUMN cpf SET UNIQUE;
