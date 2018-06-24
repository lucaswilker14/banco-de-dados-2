create or replace type t_pessoa as object (
 nome varchar2(30),
 ssn number,
 endereco t_endereco
);