-- Criacao da tabelas 
CREATE TABLE casa(
    nome_casa VARCHAR(15) NOT NULL,
    qtd_alunos NUMBER DEFAULT 0, -- colocar um trigger pra toda vez que adicionar um aluno aumentar a quantidade
    cor_1 VARCHAR(15),
    cor_2 VARCHAR(15),
	CONSTRAINT chk_aluno CHECK (qtd_alunos > -1),
    CONSTRAINT pk_casa PRIMARY KEY (nome_casa)
);
CREATE TABLE bruxo(
    varinha VARCHAR(10) NOT NULL,
    nome_bruxo VARCHAR(20),
    dt_nascimento DATE,
    end_CEP NUMBER,
    end_logradouro VARCHAR(40),
    nome_casa VARCHAR(15) NOT NULL,
    CONSTRAINT pk_bruxo PRIMARY KEY (varinha),
    CONSTRAINT fk_bruxo FOREIGN KEY (nome_casa)REFERENCES casa (nome_casa)
);
CREATE TABLE professor(
    varinha VARCHAR(10) NOT NULL,
    cod_professor NUMBER,
    especializacao VARCHAR (20),
    chefe VARCHAR(10),
    CONSTRAINT pk_professor PRIMARY KEY (varinha),
    CONSTRAINT fk_professor FOREIGN KEY (varinha) REFERENCES bruxo(varinha),
    CONSTRAINT fk_chefe FOREIGN KEY (chefe) REFERENCES professor(varinha)
);
CREATE TABLE aluno (
    varinha VARCHAR(10) NOT NULL,
    matricula NUMBER,
    CONSTRAINT pk_aluno PRIMARY KEY (varinha),
    CONSTRAINT fk_aluno FOREIGN KEY (varinha) REFERENCES bruxo(varinha)
);
CREATE TABLE disciplina(
    varinha VARCHAR(10) NOT NULL,
    cod_disciplina VARCHAR(10) NOT NULL,
    grade_horario_hora VARCHAR(5),
    grade_horario_dia1 VARCHAR(3),
    grade_horario_dia2 VARCHAR(3),
    grade_horario_dia3 VARCHAR(3),
    CONSTRAINT pk_disciplina PRIMARY KEY (cod_disciplina),
    CONSTRAINT fk_disciplina FOREIGN KEY (varinha) REFERENCES professor(varinha)
);
CREATE TABLE animal_de_estimacao (
    id_animal NUMBER NOT NULL,
    nome_animal VARCHAR(20),
    especie VARCHAR(20),
    CONSTRAINT pk_animal PRIMARY KEY (id_animal)
);
CREATE TABLE monitoria(
    nome_casa VARCHAR(15) NOT NULL,
    qtd_monitores NUMBER, -- tem que aumentar sempre que adicionar um monitor novo
    cod_sala NUMBER,
	  CONSTRAINT chk_qtd CHECK (qtd_monitores BETWEEN 0 AND 5),
    CONSTRAINT pk_monitoria PRIMARY KEY (nome_casa),
    CONSTRAINT fk_monitoria FOREIGN KEY (nome_casa) REFERENCES casa (nome_casa)
);

CREATE TABLE magias(
    varinha VARCHAR(10) NOT NULL,
    magia VARCHAR(20) NOT NULL,
    CONSTRAINT pk_magias PRIMARY KEY (varinha, magia),
    CONSTRAINT fk_magias FOREIGN KEY (varinha) REFERENCES bruxo(varinha)
);

CREATE TABLE participa (
    varinha VARCHAR(10) NOT NULL,
    nome_casa VARCHAR(15) NOT NULL,
    id_animal NUMBER,
    CONSTRAINT ak_participa UNIQUE (id_animal), 
    CONSTRAINT pk_participa PRIMARY KEY (varinha),
    CONSTRAINT fk_participa_aluno FOREIGN KEY (varinha) REFERENCES aluno(varinha),
    CONSTRAINT fk_participa_casa FOREIGN KEY (nome_casa) REFERENCES monitoria(nome_casa),
    CONSTRAINT fk_participa_animal FOREIGN KEY (id_animal) REFERENCES animal_de_estimacao(id_animal)
);
CREATE TABLE cursa (
    varinha VARCHAR(10) NOT NULL,
    cod_disciplina VARCHAR(10) NOT NULL,
    dt_inicio DATE NOT NULL,
    CONSTRAINT pk_cursa PRIMARY KEY (varinha, cod_disciplina, dt_inicio),
    CONSTRAINT fk_cursa_aluno FOREIGN KEY (varinha) REFERENCES aluno(varinha),
    CONSTRAINT fk_cursa_disci FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod_disciplina)
);
