CREATE OR REPLACE PROCEDURE insereAluno(matricula IN NUMBER, nome IN VARCHAR, nascimento IN VARCHAR, sexo IN VARCHAR, email IN VARCHAR)
AS
BEGIN
    INSERT INTO aluno (matricula, nome, nascimento, sexo, email) VALUES (matricula, nome, nascimento, sexo, email);
    COMMIT;
END;

BEGIN
    insereAluno(2001187, 'João Paulo', '21/05/1981', 'M', null);
END;
