CREATE OR REPLACE PROCEDURE insereAluno(matricula IN NUMBER, nome IN VARCHAR, nascimento IN VARCHAR, sexo IN VARCHAR, email IN VARCHAR)
AS
BEGIN
    INSERT INTO aluno (matricula, nome, nascimento, sexo, email) VALUES (matricula, nome, nascimento, sexo, email);
    COMMIT;
EXCEPTION
    WHEN dup_val_on_index THEN
      DBMS_OUTPUT.PUT_LINE('Já existe um aluno cadastrado com essa matricula.');
END;

BEGIN
    insereAluno(2001187, 'Simone Lins', '23/07/1981', 'M', null);
END;
