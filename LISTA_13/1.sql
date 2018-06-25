create type t_pessoa2 as object (
  primeiroNome varchar2 (20),
  ultimoNome varchar2(20),
  email varchar2(30),
  salario number,
  idade number(3)
) not final;

create type t_estudante under t_pessoa2 (
    matricula varchar2(9),
    temProjeto number(1)
);

create type t_empregado as object (
 nome varchar2(30),
 matricula varchar2(9),
 cargo varchar2(30),
 tempoServicoAnos number(2)
);