CREATE TABLE balanco
( ano NUMBER(4),
  totalAlunos NUMBER(10),
  CONSTRAINT ano_pk PRIMARY KEY (ano)
);

create or replace PROCEDURE atualizabalancomanual
AS
  CURSOR anos IS SELECT DISTINCT TO_NUMBER(SUBSTR(TO_CHAR(matricula),0,4)) AS ano FROM aluno;
  v_count NUMBER(10);
BEGIN
   FOR ano IN anos LOOP
       BEGIN
        v_count := contaAlunoAno(ano.ano);
        INSERT INTO balanco (ano, totalAlunos) VALUES (ano.ano, v_count);
        EXCEPTION
           WHEN dup_val_on_index THEN
               UPDATE balanco SET totalAlunos = v_count WHERE ano = ano.ano;
        END;
        COMMIT;
   END LOOP;
END;


BEGIN
  atualizabalancomanual();
END;
