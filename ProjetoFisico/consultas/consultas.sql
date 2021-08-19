-- 1. X Group by/Having X
-- Projetar as varinhas dos alunos que cursaram mais 3 disciplinas em 1993

SELECT varinha, COUNT(*)as qtd
FROM cursa 
WHERE EXTRACT(YEAR FROM dt_inicio) = 1993
GROUP BY varinha 
HAVING COUNT(*) > 3;

-- 2. X Junção interna X
-- Nome do professor e de sua disciplina que têm aulas após o meio dia

SELECT B.nome_bruxo, D.cod_disciplina
FROM bruxo B INNER JOIN disciplina D ON D.varinha = B.varinha
WHERE D.grade_horario_hora > '12:00';

-- 3. X Junção externa X -- outer join
-- Nome de todos os pets e a varinha de seus donos (bruxo)

SELECT A.nome_animal, P.varinha
FROM animal_de_estimacao A LEFT OUTER JOIN participa P 
ON P.id_animal = A.id_animal;

-- 4. X Semi join X 
-- Projetar o nome dos professores que lecionam alguma disciplina

SELECT B.nome_bruxo
FROM bruxo B
WHERE EXISTS (
  SELECT *
  FROM disciplina D
  WHERE B.varinha = D.varinha 
);

-- 5. X Anti Join X
-- Projetar a matricula e o nome dos alunos que nao tem animal de estimação

SELECT A.matricula, B.nome_bruxo
FROM aluno A INNER JOIN bruxo B ON B.varinha = A.varinha
WHERE NOT EXISTS (
  SELECT *
  FROM participa P
  WHERE A.varinha = P.varinha AND P.id_animal IS NOT NULL
); -- tabela

-- 6. X Subconsulta do tipo escalar X
-- Projetar todos os nomes e dt_nascimento dos bruxos mais velhos que o professor de varinha = 'SS'

SELECT B.nome_bruxo, B.dt_nascimento
FROM bruxo B
WHERE B.dt_nascimento < (
    SELECT B1.dt_nascimento
    FROM bruxo B1
    WHERE B1.varinha = 'SS'
); -- escalar

-- 6. X Subconsulta do tipo linha X
-- Bruxos que nasceram no mesmo ano e que são da mesma casa que "Harry Potter"

SELECT B.nome_bruxo
FROM bruxo B
WHERE B.nome_bruxo <> 'Harry Potter' -- que nao seja harry
AND (EXTRACT(YEAR FROM B.dt_nascimento), B.nome_casa) = (
    SELECT EXTRACT(YEAR FROM B1.dt_nascimento), B1.nome_casa
    FROM bruxo B1
    WHERE B1.nome_bruxo = 'Harry Potter'
); -- linha

-- extra (semi join)

--monitores sem animal
SELECT B.nome_bruxo
FROM bruxo B
WHERE B.varinha IN (
  SELECT P.varinha
  FROM participa P
  WHERE P.id_animal IS NULL
);