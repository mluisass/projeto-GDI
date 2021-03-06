-- CONSULTAS

-- 1. X Group by/Having X
-- Projetar as varinhas dos alunos que cursaram mais de 3 disciplinas em 1993

SELECT varinha, COUNT(*)AS qtd
FROM cursa 
WHERE EXTRACT(YEAR FROM dt_inicio) = 1993
GROUP BY varinha 
HAVING COUNT(*) > 3;

-- 2. X Junção interna X
-- Nome do professor e de sua disciplina que têm aulas após o meio dia

SELECT B.nome_bruxo, D.cod_disciplina, D.grade_horario_hora
FROM bruxo B INNER JOIN disciplina D ON D.varinha = B.varinha
WHERE D.grade_horario_hora > '12:00';

-- 3. X Junção externa X -- outer join
-- Nome de todos os animais de estimação e a varinha de seus donos (bruxos)

SELECT A.nome_animal, P.varinha
FROM animal_de_estimacao A LEFT OUTER JOIN participa P 
ON P.id_animal = A.id_animal;

-- 4. X Semi join X 
-- Projetar o nome dos professores que lecionam alguma disciplina
-- A subconsulta é do tipo tabela

SELECT B.nome_bruxo
FROM bruxo B
WHERE EXISTS (
  SELECT *
  FROM disciplina D
  WHERE B.varinha = D.varinha 
);

-- 5. X Anti Join X
-- Projetar a matricula e o nome dos alunos que nao tem animal de estimação
-- A subconsulta é do tipo linha

SELECT A.matricula, B.nome_bruxo
FROM aluno A INNER JOIN bruxo B ON B.varinha = A.varinha
WHERE NOT EXISTS (
  SELECT *
  FROM participa P
  WHERE A.varinha = P.varinha AND P.id_animal IS NOT NULL
);

-- 6. X Subconsulta do tipo escalar X
-- Projetar todos os nomes e dt_nascimento dos bruxos mais velhos que o professor de varinha = 'SS'

SELECT B.nome_bruxo, B.dt_nascimento
FROM bruxo B
WHERE B.dt_nascimento < (
    SELECT B1.dt_nascimento
    FROM bruxo B1
    WHERE B1.varinha = 'SS'
); 

-- 6. X Subconsulta do tipo linha X
-- Projetar bruxos que nasceram no mesmo ano e que são da mesma casa que "Harry Potter" exceto ele mesmo

SELECT B.nome_bruxo
FROM bruxo B
WHERE B.nome_bruxo <> 'Harry Potter' 
AND (EXTRACT(YEAR FROM B.dt_nascimento), B.nome_casa) = (
    SELECT EXTRACT(YEAR FROM B1.dt_nascimento), B1.nome_casa
    FROM bruxo B1
    WHERE B1.nome_bruxo = 'Harry Potter'
); 


-- 7. Operação de Conjunto
-- Projetar os códigos dos professores e as matrículas alunos cujas varinhas (iniciais) começam com a letra 'R'

SELECT A.varinha AS iniciais, A.matricula AS identifier
FROM aluno A
WHERE A.varinha LIKE 'R%'
UNION 
(SELECT P.varinha, P.cod_professor
FROM professor P
WHERE P.varinha LIKE 'R%');
-- funciona porque cod_professor e matricula são do mesmo tipo (number)

