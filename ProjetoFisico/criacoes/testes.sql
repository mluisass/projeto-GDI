
INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RLS', 'Rebecca Lima', date'1978-01-10', CEPs.nextval, 'Dormitorio G', 'Grifinoria');

INSERT INTO aluno(varinha,matricula) VALUES ('RLS',MATs.nextval);

INSERT INTO participa (varinha, nome_casa) 
VALUES ('RLS','Grifinoria');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('RLS','TM', date'1993-09-01');

INSERT INTO magias(varinha, magia)
VALUES ('RLS', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('RLS', 'Accio');