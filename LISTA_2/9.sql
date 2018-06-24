create or replace type projeto_type as object (
  Id number(4),
  nome varchar2(30),
  proprietario ref t_participante,
  dt_inicio date,
  duracao number,
  modulos t_modulotbl -- nested table
);

create table projetos of projeto_type nested table modulos store as modulos_nt;