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
VALUES ('HP', 'Harry Potter', '1980-07-31', CEPs.nextval, 'Rua dos Alfeneiros', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('HG', 'Hermione Granger', '1979-09-19', CEPs.nextval, 'Dormitorio G', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RW', 'Rony Weasley', '1980-03-01', CEPs.nextval , 'A Toca', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GW', 'Gina Weasley', '1980-07-31', CEPs.nextval, 'A Toca', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('VG', 'Vincent Crabbe', '1980-09-02', CEPs.nextval, 'Dormitorio S','Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GG', 'Gregory Goyle', '1980-08-31', CEPs.nextval, 'Dormitorio S', 'Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('DM', 'Draco Malfoy', '1980-05-21', CEPs.nextval, 'Dormitorio S', 'Sonserina' );

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('CD', 'Cedrico Diggory', '1978-01-12', CEPs.nextval, 'Dormitorio L', 'Lufa-Lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('NT', 'Ninfadora Tonks', '1976-07-22', CEPs.nextval, 'A Toca', 'Lufa-lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('LL', 'Luna Lovegood', '1981-02-13', CEPs.nextval, 'Dormitorio C', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('CC', 'Cho Chang', '1978-09-01', CEPs.nextval, 'Dormitorio C', 'Corvinal');

-- bruxos professores
INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('PS', 'Pomona Sprout', '1965-05-15', CEPs.nextval, 'Hogwarts Sala L', 'Lufa-Lufa');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('AD', 'Alvo Dumbledore', '1881-08-30', CEPs.nextval, 'Hogwarts Sala Chefe', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('SS', 'Severo Snape', '1960-01-09', CEPs.nextval, 'Hogwarts Sala S', 'Sonserina');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('MM', 'Minerva McGonagall', '1935-10-04', CEPs.nextval, 'Hogwarts Sala G', 'Grifinoria');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('FF', 'Filio Flitwick', '1958-10-17', CEPs.nextval, 'Hogwarts Sala C', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('GL', 'Gilderoy Lockhart', '1964-01-26', CEPs.nextval, 'Hogwarts Sala C1', 'Corvinal');

INSERT INTO bruxo (varinha, nome_bruxo, dt_nascimento, end_CEP, end_logradouro, nome_casa)
VALUES ('RL', 'Remo Lupin', '1960-03-10', CEPs.nextval, 'Hogwarts Sala G1', 'Grifinoria');
