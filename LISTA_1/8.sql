CREATE OR REPLACE FUNCTION contaAlunoAno(ano NUMBER)
RETURN NUMBER
AS
  v_count NUMBER(3) := 0;
  CURSOR alunos IS SELECT matricula FROM aluno WHERE TO_NUMBER(SUBSTR(TO_CHAR(matricula),0,4)) = ano;
BEGIN
    FOR aluno IN alunos LOOP
       v_count := v_count + 1; 
    END LOOP;
   RETURN v_count;
END;


DECLARE
  v_c NUMBER(3);
BEGIN
    v_c := contaAlunoAno(2000);
    DBMS_OUTPUT.PUT_LINE(v_c); 
END;
