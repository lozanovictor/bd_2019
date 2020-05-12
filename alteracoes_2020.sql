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
    cod_procedimento INTEGER NOT NULL,
    PRIMARY KEY (id_laudo),
    FOREIGN KEY (cod_amostra) REFERENCES AMOSTRA (cod_amostra),
    FOREIGN KEY (CRBM) REFERENCES BIOMEDICO (CRBM),
    FOREIGN KEY (id_equipamento) REFERENCES EQUIPAMENTO (id_equipamento),
    FOREIGN KEY (cod_procedimento) REFERENCES EXAME (cod_procedimento));
    
CREATE UNIQUE INDEX CONCURRENTLY unique_paciente_cpf 
ON PACIENTE (CPF);
                                                     
ALTER TABLE PACIENTE
    ADD CONSTRAINT unique_peciente_cpf 
    UNIQUE USING INDEX unique_paciente_cpf;
                                                     
ALTER TABLE SECRETARIA
    ADD e_estagiaria BOOLEAN,                                                 
    ADD pode_efetivar BOOLEAN;

ALTER TABLE LAUDO
    ADD id_paciente INTEGER NOT NULL,
    ADD FOREIGN KEY (id_paciente) REFERENCES PACIENTE (id_paciente);                                              

                                                     
ALTER TABLE EQUIPAMENTO
DROP data_prox_manutencao,
ADD fazer_manutencao BOOLEAN;
