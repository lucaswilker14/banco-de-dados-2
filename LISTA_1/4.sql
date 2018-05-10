CREATE TABLE aluno
( matricula NUMBER(7),
 nome VARCHAR(60) NOT NULL,
 nascimento VARCHAR(10) NOT NULL,
 sexo VARCHAR(1),
 email VARCHAR(25),
 CONSTRAINT matricula_pk PRIMARY KEY (matricula)
);

INSERT INTO aluno (matricula, nome, nascimento, sexo) VALUES (2002199, 'Jorge Gonçalves', '08/09/1982', 'M');
INSERT INTO aluno (matricula, nome, nascimento, sexo) VALUES (2001288, 'Maria Paula', '07/11/1980', 'F');
INSERT INTO aluno (matricula, nome, nascimento, sexo) VALUES (2000176, 'Paulo Fernandes', '11/01/1980', 'M');
INSERT INTO aluno (matricula, nome, nascimento, sexo) VALUES (2001255, 'Marta Silva', '09/04/1980', 'F');
