create or replace type t_participante as object (
    empno number(4),
    nome varchar2(20),
    cargo varchar2(12),
    gerente number(4),
    admissao date,
    salario number(7,2),
    departamento number(2)
);