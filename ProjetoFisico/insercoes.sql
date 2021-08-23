------------------------------------------------- POVOANDO CASA

INSERT INTO casa (nome_casa, cor_1, cor_2)
VALUES ('Grifinoria', 'Escarlate', 'Ouro');

INSERT INTO casa (nome_casa, cor_1, cor_2)
VALUES ('Sonserina', 'Verde', 'Prata');

INSERT INTO casa (nome_casa, cor_1, cor_2)
VALUES ('Lufa-Lufa', 'Amarelo', 'Preto');

INSERT INTO casa (nome_casa, cor_1, cor_2)
VALUES ('Corvinal', 'Azul', 'Bronze');

CREATE SEQUENCE CEPs
START WITH 1000000
INCREMENT BY 10;

------------------------------------------------- POVOANDO BRUXO

-- bruxos que são alunos
INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('HP', 'Harry Potter', date'1980-07-31', CEPs.nextval, 'Rua dos Alfeneiros', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('HG', 'Hermione Granger', date'1979-09-19', CEPs.nextval, 'Dormitorio G', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RW', 'Rony Weasley', date'1980-03-01', CEPs.nextval , 'A Toca', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GW', 'Gina Weasley', date'1980-07-31', CEPs.nextval, 'A Toca', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RLS', 'Rebecca Lima', date'1978-01-10', CEPs.nextval, 'Dormitorio G', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('VG', 'Vincent Crabbe', date'1980-09-02', CEPs.nextval, 'Dormitorio S','Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GG', 'Gregory Goyle', date'1980-08-31', CEPs.nextval, 'Dormitorio S', 'Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('DM', 'Draco Malfoy', date'1980-05-21', CEPs.nextval, 'Dormitorio S', 'Sonserina' );

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('CD', 'Cedrico Diggory', date'1978-01-12', CEPs.nextval, 'Dormitorio L', 'Lufa-Lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('NT', 'Ninfadora Tonks', date'1976-07-22', CEPs.nextval, 'A Toca', 'Lufa-Lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('LL', 'Luna Lovegood', date'1981-02-13', CEPs.nextval, 'Dormitorio C', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('CC', 'Cho Chang', date'1978-09-01', CEPs.nextval, 'Dormitorio C', 'Corvinal');

-- bruxos que são professores
INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('PS', 'Pomona Sprout', date'1965-05-15', CEPs.nextval, 'Hogwarts Sala L', 'Lufa-Lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('AD', 'Alvo Dumbledore', date'1881-08-30', CEPs.nextval, 'Hogwarts Sala Chefe', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('SS', 'Severo Snape', date'1960-01-09', CEPs.nextval, 'Hogwarts Sala S', 'Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('MM', 'Minerva McGonagall', date'1935-10-04', CEPs.nextval, 'Hogwarts Sala G', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('FF', 'Filio Flitwick', date'1958-10-17', CEPs.nextval, 'Hogwarts Sala C', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GL', 'Gilderoy Lockhart', date'1964-01-26', CEPs.nextval, 'Hogwarts Sala C1', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RL', 'Remo Lupin', date'1960-03-10', CEPs.nextval, 'Hogwarts Sala G1', 'Grifinoria');

-- bruxo que nao é professor nem aluno

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RH', 'Rubeo Hagrid', date'1928-12-06', CEPs.nextval, 'Cabana próxima à Floresta Proibida', 'Grifinoria');

------------------------------------------------- POVOANDO MAGIAS

INSERT INTO magias(varinha, magia)
VALUES ('HP', 'Expecto Patronum');

INSERT INTO magias(varinha, magia)
VALUES ('HP', 'Wingardium Leviosa');

INSERT INTO magias(varinha, magia)
VALUES ('HP', 'Alohomora');

INSERT INTO magias(varinha, magia)
VALUES ('HP', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('HG', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('HG', 'Alohomora');

INSERT INTO magias(varinha, magia)
VALUES ('HG', 'Wingardium Leviosa');

INSERT INTO magias(varinha, magia)
VALUES ('HG', 'Lumos');

INSERT INTO magias(varinha, magia)
VALUES ('RW', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('RW', 'Lumos');

INSERT INTO magias(varinha, magia)
VALUES ('RW', 'Accio');

INSERT INTO magias(varinha, magia)
VALUES ('RW', 'Expecto Patronum');

INSERT INTO magias(varinha, magia)
VALUES ('GW', 'Expecto Patronum');

INSERT INTO magias(varinha, magia)
VALUES ('GW', 'Wingardium Leviosa');

INSERT INTO magias(varinha, magia)
VALUES ('DM', 'Alohomora');

INSERT INTO magias(varinha, magia)
VALUES ('NT', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('NT', 'Accio');

INSERT INTO magias(varinha, magia)
VALUES ('NT', 'Alohomora');

INSERT INTO magias(varinha, magia)
VALUES ('LL', 'Wingardium Leviosa');

INSERT INTO magias(varinha, magia)
VALUES ('LL', 'Lumos');

INSERT INTO magias(varinha, magia)
VALUES ('CC', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('AD', 'Lumos');

INSERT INTO magias(varinha, magia)
VALUES ('AD', 'Accio');

INSERT INTO magias(varinha, magia)
VALUES ('SS', 'Expecto Patronum');

INSERT INTO magias(varinha, magia)
VALUES ('RLS', 'Expelliarmus');

INSERT INTO magias(varinha, magia)
VALUES ('RLS', 'Accio');

------------------------------------------------- POVOANDO PROFESSOR
CREATE SEQUENCE CODS
START WITH 1
INCREMENT BY 1;

INSERT INTO professor(varinha,cod_professor,especializacao) 
VALUES ('AD', CODS.nextval,'Alquimia');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('PS', CODS.nextval,'Arte Trouxa','AD');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('SS', CODS.nextval,'Artes das Trevas','AD');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('MM', CODS.nextval,'Feiticos','AD');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('FF', CODS.nextval,'Teoria da Magia','AD');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('GL', CODS.nextval,'Transfiguracao','AD');

INSERT INTO professor(varinha,cod_professor,especializacao,chefe) 
VALUES ('RL', CODS.nextval,'Astronomia','AD');

------------------------------------------------- POVOANDO ALUNO 
CREATE SEQUENCE MATs
START WITH 1000000
INCREMENT BY 1;

INSERT INTO aluno(varinha,matricula) VALUES ('HP',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('HG',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('RW',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('GW',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('VG',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('GG',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('CD',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('NT',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('LL',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('CC',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('DM',MATs.nextval);

INSERT INTO aluno(varinha,matricula) VALUES ('RLS',MATs.nextval);

------------------------------------------------- POVOANDO DISCIPLINA 
INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1,grade_horario_dia2,varinha) 
VALUES ('HB','20:00','QUI','TER','PS'); 
-- Herbologia

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, varinha) 
VALUES ('HM','10:00','SEG','PS'); 
-- História da Magia

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1,grade_horario_dia2,varinha) 
VALUES ('TM','08:00','SEG','SEX','FF'); 
-- Teoria da Magia

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1,grade_horario_dia2,varinha) 
VALUES ('AL','18:00','QUI','SEG','FF'); 
-- Alquimia


INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, grade_horario_dia2, grade_horario_dia3, varinha) 
VALUES ('FT','10:00','SEG','QUA','SEX','MM'); 
-- Feitiços

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, varinha) 
VALUES ('PO','08:00','QUI','MM'); 
-- Poções

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, grade_horario_dia2, grade_horario_dia3, varinha) 
VALUES ('TR','15:00','SEG','QUA','SEX','GL'); 
-- Transfiguração

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, grade_horario_dia2, grade_horario_dia3, varinha) 
VALUES ('TCM','13:00','TER','QUI','SEX','RL'); 
-- Trato das criaturas magicas

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1, grade_horario_dia2, grade_horario_dia3, varinha) 
VALUES ('DCAT','18:00','SEG','TER','SEX','SS'); 
-- Defesa contra as artes das trevas

INSERT INTO disciplina(cod_disciplina, grade_horario_hora,grade_horario_dia1,grade_horario_dia2,varinha) 
VALUES ('EA','14:00','QUI','SEX','SS'); 
-- Estudos Antigos


------------------------------------------------- POVOANDO ANIMAIS 

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('EC', 'Errol', 'Coruja');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('HC', 'Hedwig', 'Coruja');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('FF', 'Fawkes', 'Fenix');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('BH', 'Buckbeak', 'Hipogrifo');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('MG', 'Madame Norra', 'Gato');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('CG', 'Crookshanks', 'Gato');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('FC', 'Fang', 'Cachorro');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('NC', 'Nagini', 'Cobra');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('AA', 'Aragog', 'Aranha');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('SR', 'Scabbers', 'Rato');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('RC', 'Ripper', 'Cachorro');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('TS', 'Trevor', 'Sapo');

INSERT INTO animal_de_estimacao (id_animal, nome_animal, especie)
VALUES ('ND', 'Norbert', 'Dragao Bebe');


------------------------------------------------- POVOANDO MONITORIA 

INSERT INTO monitoria (nome_casa, cod_sala)
VALUES ('Grifinoria', '5243');

INSERT INTO monitoria (nome_casa, cod_sala)
VALUES ('Sonserina', '2049');

INSERT INTO monitoria (nome_casa, cod_sala)
VALUES ('Lufa-Lufa', '9148');

INSERT INTO monitoria (nome_casa, cod_sala)
VALUES ('Corvinal', '1706');



------------------------------------------------- POVOANDO PARTICIPA 

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('HP','Grifinoria','NC');

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('HG','Grifinoria','TS');

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('CC','Corvinal','FC');

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('VG','Sonserina','SR');

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('NT','Lufa-Lufa','AA');

INSERT INTO participa (varinha, nome_casa, id_animal) 
VALUES ('GG','Sonserina','EC');

-- monitor sem animal

INSERT INTO participa (varinha, nome_casa) 
VALUES ('RLS','Grifinoria');


------------------------------------------------- POVOANDO CURSA

-- Feitiços
INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('VG','FT', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','FT', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','FT', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','FT', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('DM','FT', date'1993-09-01');

-- Herbologia 
INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('VG','HB', date'1994-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','HB', date'1994-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','HB', date'1994-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('DM','HB', date'1994-09-01');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('HP','HB', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('HG','HB', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('RW','HB', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('NT','HB', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('CD','HB', date'1994-09-10');

-- historia da magia

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','HM', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','HM', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('DM','HM', date'1993-09-01');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('NT','HM', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('CD','HM', date'1994-09-10');


-- defesa contra artes das trevas

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('VG','DCAT', date'1994-09-10');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','DCAT', date'1994-09-10');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('HG','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('GW','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('HP','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('DM','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('CD','DCAT', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('NT','DCAT', date'1994-09-10');

-- Alquimia

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('VG','AL', date'1994-09-10');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','AL', date'1994-09-10');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','AL', date'1994-09-10');

INSERT INTO cursa (varinha, cod_disciplina, dt_inicio)
VALUES ('CD','AL', date'1994-09-10');


-- Poções

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','PO', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','PO', date'1993-09-01');

-- Estudos Antigos

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','EA', date'1993-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','EA', date'1993-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('DM','EA', date'1993-04-01');

-- Transfiguração

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','TR', date'1992-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','TR', date'1992-04-01');

-- Trato das criaturas

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','TCM', date'1993-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('DM','TCM', date'1993-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','TCM', date'1993-04-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('VG','TCM', date'1993-04-01');

-- Teoria da magia

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('GG','TM', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('LL','TM', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('CC','TM', date'1993-09-01');

INSERT INTO cursa(varinha, cod_disciplina, dt_inicio) 
VALUES ('RLS','TM', date'1993-09-01');