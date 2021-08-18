-/*Alvo Dumbledore
Aleto Carrow
Amico Carrow
Aurora Sinistra
Bathsheda Babbling
Bartolomeu Crouch Jr
Caridade Burbage
Cuthbert Binns
Dolores Umbridge
Fílio Flitwick
Firenze
Galateia Merrythought
Gilderoy Lockhart
Herbert Beery
Horácio Slughorn
Minerva McGonagall
Neville Longbottom
Pomona Sprout
Quirino Quirrell
Remo Lupin
Rolanda Hooch
Rúbeo Hagrid
Séptima Vector
Severo Snape
Silvanus Kettleburn
Sibila Trelawney
Vindicto Viridiano
Guilhermina Grubbly-Plank
*/
CREATE SEQUENCE CODs
START WITH 0
INCREMENT BY 1;

INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('AD', CODS.nextval,'Alquimia');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('PS', CODS.nextval,'Arte Trouxa ','AD');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('SS', CODS.nextval,'Artes das Trevas','AD');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('MM', CODS.nextval,'Feitiços ','AD');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('FF', CODS.nextval,'Teoria da Magia','AD');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('GL', CODS.nextval,'Transfiguração','AD');
INSERT INTO professor(varinha,cod_professor,especialização,chefe) VALUES ('RL', CODS.nextval,'Defesa Contra as Artes das Trevas','AD');