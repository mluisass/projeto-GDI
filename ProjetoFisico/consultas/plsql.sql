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
END

------------------------------------------------------------------------