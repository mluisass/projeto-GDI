-- profs, cod e hora q dao aula dps do meio dia
select B.nome_bruxo, D.cod_disciplina, D.grade_horario_hora
from bruxo B inner join disciplina D on B.varinha = D.varinha
where D.grade_horario_hora > '12:00';