create or replace type empregado_type as object (
   empNo integer,
   dadosPessoais ref t_pessoa, -- ref de object type
   gerente ref t_pessoa, -- ref de object type
   endComercial t_endereco,
   salario number,
   telefones telefone_array
);

create table empregados of empregado_type (
    empNo constraint empregados primary key,
    dadosPessoais scope is pessoas, -- o escopo é da object table e nao do object type
    gerente scope is pessoas
);