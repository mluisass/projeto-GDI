---> PROCEDIMENTO

-- Procedimento que printa a varinha dos alunos que cursam uma determinada disciplina

CREATE OR REPLACE PROCEDURE cursando (codDisciplina cursa.cod_disciplina%TYPE) IS
    CURSOR cur_alunos IS
        SELECT varinha, dt_inicio
        FROM cursa 
        WHERE cod_disciplina = codDisciplina;
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Varinha e data de inicio que cursam '||codDisciplina||':');
    FOR reg_cursor IN cur_alunos LOOP 
        DBMS_OUTPUT.PUT_LINE('Varinha: '|| reg_cursor.varinha || ', data de inicio: ' || reg_cursor.dt_inicio);
    END LOOP; 
END;
--------------------------------------------------
-- Bloco anônimo para chamar o procedimento
DECLARE 
    R VARCHAR(3);
BEGIN
    R:='HB';
    cursando(R);
END;
------------------------------------------------------------------------


-----> FUNÇÃO

-- Contar a quantidade de magias aprendidas por um determinado bruxo 

CREATE OR REPLACE FUNCTION qtd_magias (ident VARCHAR) RETURN NUMBER IS 
    qtd NUMBER;
BEGIN
    SELECT COUNT(*) INTO qtd --vai contar a qtd de linhas
    FROM magias
    WHERE varinha = ident;
    RETURN qtd;
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
END;
--------------------------------------------------
-- Bloco anônimo para chamar a função
DECLARE
    I VARCHAR(3);
    O NUMBER;
BEGIN
    I:='RLS';
    O:= qtd_magias(R);
    DBMS_OUTPUT.PUT_LINE('Quantidade de magias: ' || O);
END;

------------------------------------------------------------------------

-----> GATILHOS

-- Toda vez que adicionar um aluno atualizar qtd_bruxos da casa
CREATE OR REPLACE TRIGGER atualizar_qtd_bruxos
AFTER INSERT OR DELETE ON bruxo
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        -- AUMENTA 1
        UPDATE casa
        SET qtd_bruxos = qtd_bruxos + 1
        WHERE nome_casa = :NEW.nome_casa;
    ELSIF DELETING THEN
        -- DIMINUI 1
        UPDATE casa
        SET qtd_bruxos = qtd_bruxos - 1
        WHERE nome_casa = :NEW.nome_casa;
    END IF;
END;
select * from user_errors where type = 'TRIGGER' and name = 'atualizar_qtd_bruxos';

---------------------------------------------------------------------------
-- Função para retornar a quantida de bruxos de uma casa:
CREATE OR REPLACE PROCEDURE checar_qtdBruxos (ident VARCHAR, soma NUMBER);
BEGIN
    DECLARE qtd NUMBER;
    SELECT qtd_bruxos INTO qtd 
    FROM casa
    WHERE nome_casa = ident;

    UPDATE bruxo
    SET qtd_bruxos = qtd + soma
    WHERE nome_casa = ident;
END;
--------------------------------------------------------------------------

-- Função para retornar a quantida de monitores de uma casa:
CREATE OR REPLACE FUNCTION checar_qtdMonitores (ident VARCHAR) RETURN NUMBER IS 
    qtd NUMBER;
BEGIN
    SELECT qtd_monitores INTO qtd 
    FROM monitoria
    WHERE nome_casa = ident;
    RETURN qtd;
END;

--------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER atualizar_qtd_monitores
AFTER INSERT OR DELETE ON participa
FOR EACH ROW
BEGIN
    DECLARE qtdAntiga;
    qtdAntiga = checar_qtdMonitores(:NEW.nome_casa);
    IF INSERTING THEN
        -- AUMENTA 1
        UPDATE monitoria
        SET qtd_monitores = qtdAntiga + 1
        WHERE nome_casa = :NEW.nome_casa;
    ELSIF DELETING THEN
        -- DIMINUI 1
        UPDATE monitoria
        SET qtd_monitores = qtdAntiga - 1
        WHERE nome_casa = :NEW.nome_casa;
    END IF;
END;


CREATE OR REPLACE TRIGGER check_aluno_prof
BEFORE INSERT ON aluno OR professor
FOR EACH ROW
BEGIN
    IF INSERTING ON aluno THEN
        -- procurar se tem aquela varinha em prof, se tiver: ERRO
        IF (SELECT * FROM professor 
        WHERE varinha = :NEW.varinha) IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('FRASE');
    ELSE
        -- procurar se tem aquela varinha em aluno, se tiver: ERRO
         IF (SELECT * FROM aluno
        WHERE varinha = :NEW.varinha) IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('FRASE');
        END IF;
    END IF;
END;










---------------------------------------------------------------------------

-- DELIMITER //
-- CREATE TRIGGER `TRG_EntradaProduto_AD` AFTER DELETE ON `entrada_produto`
-- FOR EACH ROW
-- BEGIN
--       CALL SP_AtualizaEstoque (old.id_produto, old.qtde * -1, old.valor_unitario);
-- END //
-- DELIMITER ;

-- DELIMITER //
-- CREATE PROCEDURE `SP_AtualizaEstoque`( `id_prod` int, `qtde_comprada` int, valor_unit decimal(9,2))
-- BEGIN
--     declare contador int(11);

--     eSELECT count(*) into contador FROM estoque WHERE id_produto = id_prod;

--     IF contador > 0 THE
--         UPDATE estoque SET qtde=qtde + qtde_comprada, valor_unitario= valor_unit
--         WHERE id_produto = id_prod;
--     ELSE
--         INSERT INTO estoque (id_produto, qtde, valor_unitario) values (id_prod, qtde_comprada, valor_unit);
--     END IF;
-- END //
-- DELIMITER ;

-- CREATE OR REPLACE TRIGGER gatilhoAluno
-- AFTER DELETE OR INSERT OR UPDATE OF nome ON Aluno
-- FOR EACH ROW
--  BEGIN
--  IF UPDATING THEN
--  DBMS_OUTPUT.PUT_LINE('Atualizando...');
--  DBMS_OUTPUT.PUT_LINE('Nome antigo: ' || :OLD.nome || ', Nome novo: ' || :NEW.nome);
--  ELSIF INSERTING THEN
--  DBMS_OUTPUT.PUT_LINE('Inserindo...');
--  DBMS_OUTPUT.PUT_LINE('Nome: ' || :NEW.nome);
--  ELSE
--  DBMS_OUTPUT.PUT_LINE('Deletando...');
--  DBMS_OUTPUT.PUT_LINE('Nome deletado: ' || :OLD.nome);
--  END IF;
--  END;