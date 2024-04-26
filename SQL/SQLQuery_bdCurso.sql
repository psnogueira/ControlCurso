-- DROP e CREATE DATABASE

DROP DATABASE DBCURSO;

CREATE DATABASE DBCURSO;

USE DBCURSO;

-- DELETANDO e CRIANDO TABELAS

DROP TABLE ALUNOS;
DROP TABLE CURSOS;

CREATE TABLE cursos (
    id_curso  INT NOT NULL IDENTITY(1, 1),
    nome      VARCHAR(20),
    descricao VARCHAR(100)
);

ALTER TABLE cursos ADD CONSTRAINT cursos_pk PRIMARY KEY ( id_curso );

CREATE TABLE alunos (
    id_aluno        INT NOT NULL IDENTITY(1000, 1),
    primeiro_nome   VARCHAR(20) NOT NULL,
    ultimo_nome     VARCHAR(25),
    email           VARCHAR(25) NOT NULL,
    data_nascimento DATE NOT NULL,
    cursos_id_curso INT NOT NULL
);

ALTER TABLE alunos ADD CONSTRAINT alunos_pk PRIMARY KEY ( id_aluno );

ALTER TABLE alunos
    ADD CONSTRAINT alunos_cursos_fk FOREIGN KEY ( cursos_id_curso )
        REFERENCES cursos ( id_curso );

-- INSERINDO DADOS NAS TABELAS "CURSOS" e "ALUNOS"

-- Inserindo dados na tabela "CURSOS"
INSERT INTO cursos (nome, descricao) 
VALUES ('Matemática', 'Curso de Matemática Avançada');

INSERT INTO cursos (nome, descricao) 
VALUES ('História', 'Curso de História Antiga');

-- Inserindo dados na tabela "ALUNOS"
INSERT INTO alunos (primeiro_nome, ultimo_nome, email, data_nascimento, cursos_id_curso) 
VALUES ('João', 'Silva', 'joao.silva@email.com', '2000-05-15', 1);

INSERT INTO alunos (primeiro_nome, ultimo_nome, email, data_nascimento, cursos_id_curso) 
VALUES ('Maria', 'Santos', 'maria.santos@email.com', '1999-08-20', 2);

SELECT * FROM CURSOS;
SELECT * FROM ALUNOS;