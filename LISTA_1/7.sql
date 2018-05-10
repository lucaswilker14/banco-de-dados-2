create or replace PROCEDURE atualizaEmail
AS
  CURSOR alunos_c IS SELECT matricula, nome, email FROM aluno FOR UPDATE OF email;
  v_email VARCHAR2(30);
BEGIN
    FOR aluno IN alunos_c LOOP
        v_email := LOWER(CONCAT(SUBSTR(aluno.nome, 1, INSTR(aluno.nome, ' ') - 1), '@empresa.com'));
        UPDATE aluno SET email = v_email WHERE CURRENT OF alunos_c;
    END LOOP;
    COMMIT;
END;

BEGIN
  atualizaEmail();
END;
