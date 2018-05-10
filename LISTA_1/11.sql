CREATE OR REPLACE PACKAGE Modularizacao IS
  PROCEDURE insereAluno(matricula IN NUMBER, nome IN VARCHAR, nascimento IN VARCHAR, sexo IN VARCHAR, email IN VARCHAR);
  PROCEDURE atualizaEmail;
  FUNCTION contaAlunoAno(ano NUMBER) RETURN NUMBER;
  PROCEDURE atualizabalancomanual;
END;
 CREATE OR REPLACE PACKAGE BODY modularizacao
IS
  PROCEDURE INSEREALUNO(matricula  IN NUMBER,
                        nome       IN VARCHAR,
                        nascimento IN VARCHAR,
                        sexo       IN VARCHAR,
                        email      IN VARCHAR)
  AS
  BEGIN
      INSERT INTO aluno
                  (matricula,
                   nome,
                   nascimento,
                   sexo,
                   email)
      VALUES      (matricula,
                   nome,
                   nascimento,
                   sexo,
                   email);

      COMMIT;
  EXCEPTION
    WHEN dup_val_on_index THEN
    dbms_output.PUT_LINE('Já existe um aluno cadastrado com essa matricula.');
  END;
  PROCEDURE ATUALIZAEMAIL
  AS
    CURSOR alunos_c IS
      SELECT matricula,
             nome,
             email
      FROM   aluno
      FOR UPDATE OF email;
    v_email VARCHAR2(30);
  BEGIN
      FOR aluno IN alunos_c LOOP
          v_email := LOWER(CONCAT(SUBSTR(aluno.nome, 1, INSTR(aluno.nome, ' ')
                                                        - 1
                                  ),
                           '@empresa.com'));

          UPDATE aluno
          SET    email = v_email
          WHERE  CURRENT OF alunos_c;
      END LOOP;

      COMMIT;
  END;
  FUNCTION CONTAALUNOANO(ano NUMBER)
  RETURN NUMBER
  AS
    v_count NUMBER(3) := 0;
    CURSOR alunos IS
      SELECT matricula
      FROM   aluno
      WHERE  TO_NUMBER(SUBSTR(TO_CHAR(matricula), 0, 4)) = ano;
  BEGIN
      FOR aluno IN alunos LOOP
          v_count := v_count + 1;
      END LOOP;

      RETURN v_count;
  END;
  PROCEDURE ATUALIZABALANCOMANUAL
  AS
    CURSOR anos IS
      SELECT DISTINCT TO_NUMBER(SUBSTR(TO_CHAR(matricula), 0, 4)) AS ano
      FROM   aluno;
    v_count NUMBER(10);
  BEGIN
      FOR ano IN anos LOOP
          BEGIN
              v_count := CONTAALUNOANO(ano.ano);

              INSERT INTO balanco
                          (ano,
                           totalalunos)
              VALUES      (ano.ano,
                           v_count);
          EXCEPTION
              WHEN dup_val_on_index THEN
                UPDATE balanco
                SET    totalalunos = v_count
                WHERE  ano = ano.ano;
          END;

          COMMIT;
      END LOOP;
  END;
END;  

BEGIN
  Modularizacao.insereAluno(2001187, 'João Paulo', '21/05/1981', 'M', null);
  Modularizacao.insereAluno(2001187, 'Simone Lins', '23/07/1981', 'F', null);
  Modularizacao.atualizaEmail();
  Modularizacao.atualizabalancomanual();
END;
