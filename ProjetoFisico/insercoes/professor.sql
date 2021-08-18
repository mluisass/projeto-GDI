CREATE SEQUENCE CODS
START WITH 1
INCREMENT BY 1;

INSERT INTO professor(varinha,cod_professor,especializacao) VALUES ('AD', CODS.nextval,'Alquimia');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('PS', CODS.nextval,'Arte Trouxa','AD');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('SS', CODS.nextval,'Artes das Trevas','AD');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('MM', CODS.nextval,'Feiticos','AD');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('FF', CODS.nextval,'Teoria da Magia','AD');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('GL', CODS.nextval,'Transfiguracao','AD');
INSERT INTO professor(varinha,cod_professor,especializacao,chefe) VALUES ('RL', CODS.nextval,'Astronomia','AD');