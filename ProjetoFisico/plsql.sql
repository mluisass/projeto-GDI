-- PROCEDIMENTOS E FUNÇÕES

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

-- Bloco anônimo para chamar o procedimento acima
DECLARE 
    R VARCHAR(3);
BEGIN
    R:='HB';
    cursando(R);
END;
/
------------------------------------------------------------------------

-- Função para contar a quantidade de magias aprendidas por um determinado bruxo 

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
/
-- Bloco anônimo para chamar a função acima
DECLARE
    I VARCHAR(3);
    O NUMBER;
BEGIN
    I:='RLS';
    O:= qtd_magias(I);
    DBMS_OUTPUT.PUT_LINE('Quantidade de magias: ' || O);
END;

/
------------------------------------------------------------------------

-- GATILHOS

-- Toda vez que adicionar ou deletar um bruxo, atualizar qtd_bruxos da casa
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
/

-- Toda vez que adicionar ou deletar um monitor, atualizar qtd_monitores em monitoria

CREATE OR REPLACE TRIGGER atualizar_qtd_monitores
AFTER INSERT OR DELETE ON participa
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        -- AUMENTA 1
        UPDATE monitoria
        SET qtd_monitores = qtd_monitores + 1
        WHERE nome_casa = :NEW.nome_casa;
    ELSIF DELETING THEN
        -- DIMINUI 1
        UPDATE monitoria
        SET qtd_monitores = qtd_monitores - 1
        WHERE nome_casa = :NEW.nome_casa;
    END IF;
END;

/
-- Checar se a herança professor e aluno é disjunta

CREATE OR REPLACE TRIGGER check_aluno_prof
BEFORE INSERT ON aluno
FOR EACH ROW
DECLARE
    achei NUMBER;
BEGIN
    -- procurar se tem aquela varinha em aluno, se tiver: ERRO
    SELECT COUNT(*) INTO achei
    FROM professor 
    WHERE varinha = :NEW.varinha;
    IF achei > 0 THEN
        RAISE_APPLICATION_ERROR(-20205,'ESSE BRUXO NÃO PODE SER UM ALUNO PORQUE JÁ É UM PROFESSOR!!!');
    END IF;
END;

/

CREATE OR REPLACE TRIGGER check_prof_aluno
BEFORE INSERT ON professor
FOR EACH ROW
DECLARE
    achei NUMBER;
BEGIN
    -- procurar se tem aquela varinha em aluno, se tiver: ERRO
    SELECT COUNT(*) INTO achei
    FROM aluno 
    WHERE varinha = :NEW.varinha;
    IF achei > 0 THEN
        RAISE_APPLICATION_ERROR(-20205,'ESSE BRUXO NÃO PODE SER UM PROFESSOR PORQUE JÁ É UM ALUNO!!!');
    END IF;
END;
/
