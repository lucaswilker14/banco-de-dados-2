create or replace type t_modulo as object (
    Id number(4),
    nome varchar2(20),
    proprietario ref t_participante,
    dt_inicio date,
    duracao number
);