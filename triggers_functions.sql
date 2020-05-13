
CREATE TRIGGER estagiaria_secretaria
BEFORE UPDATE
ON PACIENTE FOR EACH ROW
EXECUTE PROCEDURE secretaria_estagiaria;


CREATE OR REPLACE FUNCTION secretaria_estagiaria (secretaria.id_secretaria%TYPE,
                                           paciente.id_pacientel%TYPE)
RETURNS BOOLEAN
AS
'
    DECLARE
        
        
    BEGIN
        IF (SELECT COUNT(id_secretaria) FROM PACIENTE
        WHERE e_estagiaria = TRUE AND id_secretaria = (VARIAVEL QUE VEIO DE PARAMETRO)) >=200 THEN
            UPDATE SECRETARIA
            SET pode_efetivar = TRUE,
            WHERE id_secretaria = VARIAVEL;
        ELSE
            RETURN NULL;
        END IF;
        
        RAISE  ''nome: %'', nome;
        RAISE  ''cargo atual: %'', cargo;
        RETURN ''nome'';
    END;
'
Language'plpgsql'







CREATE TRIGGER manutencao_equipamento
BEFORE INSERT
ON EXAME FOR EACH ROW
EXECUTE PROCEDURE equipamento_manutencao;


CREATE OR REPLACE FUNCTION equipamento_manutencao (exame.cod_procedimento%TYPE,
                                           exame_equipamento.id_equipamento%TYPE, equipamento.id_equipamento%TYPE)
RETURNS 
AS
'
    DECLARE
        
        
    BEGIN
        IF (SELECT id_equipamento FROM EQUIPAMENTO WHERE id_equipamento = (VARIAVEL QUE VEIO DE PARAMETRO) AND equip_compra => 5 YEARS) = TRUE THEN
            IF (SELECT id_equipamento FROM EQUIPAMENTO WHERE id_equipamento = (VARIAVEL DO PARAMETRO) AND equip_compra=> 5 YEARS AND ultima_manutencao <= 1 YEAR) = TRUE THEN
            RETURN NULL;
        ELSE
            UPDATE EQUIPAMENTO
            SET fazer_manutencao = TRUE,
            WHERE id_equipamento = PARAMETRO;
        END IF;
 
    END;
'
Language'plpgsql'



CREATE TRIGGER novo_laudo
AFTER INSERT
ON EXAME FOR EACH ROW
EXECUTE PROCEDURE laudo;


CREATE FUNCTION laudo (exame.cod_amostra%TYPE, exame.CRBM%TYPE,exame.id_equipamento%TYPE, exame.id_paciente%TYPE)
RETURNS (exame.cod_amostra%TYPE, exame.CRBM%TYPE,exame.id_equipamento%TYPE, exame.id_paciente%TYPE)
AS'
    DECLARE
    amostra INTEGER;
    biomedico INTEGER;
    equipamento INTEGER;
    paciente INTEGER;
    BEGIN
      UPDATE LAUDO
      SET cod_amostra = amostra, CRBM = biomedico, id_equipamento = equipamento, id_paciente = paciente,
      WHERE CURVAL(cod_amostra);


CREATE FUNCTION paciente_exames (paciente.id_paciente%TYPE, exame.cod_procedimento%TYPE)
RETURNS tipo_retorno  
AS' 
    DECLARE
    tabela_resultado TIPO;
    contador_exames TIPO;
    BEGIN
        SELECT paciente.id_paciente, paciente.nome, exame.id_paciente, exame.cod_procedimento, exame.tipo FROM PACIENTE, EXAME
        WHERE paciente.id_paciente = exame.id_paciente;
        
        SELECT COUNT(exame.cod_procedimento), paciente.id_paciente, exame.id_paciente FROM EXAME, PACIENTE
        WHERE paciente.id_paciente = exame.id_paciente;
    RETURN 
    RAISE NOTICE 'tabela_resultado';
    RAISE NOTICE 'contador_exames';
    END;  '  
    
LANGUAGE 'plpgsql';


CREATE FUNCTION efetivar_secretaria (secretaria.id_secretaria%TYPE, secretaria.e_estagiaria%TYPE, secretaria.pode_efetivar%TYPE, profissional.id_profissional%TYPE, profissional.nome%TYPE)
RETURNS (secretaria.id_secretaria%TYPE, secretaria.e_estagiaria%TYPE, secretaria.pode_efetivar%TYPE, profissional.id_profissional%TYPE, profissional.nome%TYPE)  
AS' 
    DECLARE
    secretaria INTEGER;
    eh_estagiaria BOOLEAN;
    efetivar BOOLEAN;
    profissioanl_id INTEGER;
    profissional_nome TEXT;
    BEGIN
        IF (SELECT id_secretaria, e_estagiaria, pode_efetivar FROM SECRETARIA
        WHERE id_secretaria = secretaria AND e_estragiaria = TRUE AND pode_efetivar = TRUE) = TRUE THEN
        SELECT secretaria.id_secretaria, secretaria.id_profissional, profissional.id_profissional, profissional.nome FROM SECRETARIA JOIN PROFISSIONAL
        WHERE secretaria.id_profissional = profissional.id_profissional AND estagiaria.e_estragiaria = TRUE AND estagiaria.pode_efetivar = TRUE
        
    RETURN 
    RAISE NOTICE 'VARIAVEL DO SELECT2'
    END;  '  
    
LANGUAGE 'plpgsql';
