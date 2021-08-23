-- povoando as casas
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

-- povoando a tabela de bruxo

-- bruxos alunos
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

-- bruxos professores
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

--bruxo que nao é professor nem aluno

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RH', 'Rubeo Hagrid', date'1928-12-06', CEPs.nextval, 'Cabana próxima à Floresta Proibida', 'Grifinoria');