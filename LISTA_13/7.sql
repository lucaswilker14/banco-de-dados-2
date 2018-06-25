alter type t_pessoa2 add map member function ordena_salarios return number cascade;

create or replace type body t_pessoa2 as
  member function email_pessoa return varchar2
  as
  begin
     return SUBSTR(self.email, 1, INSTR(self.email, '@') - 1);
  end;
  map member function ordena_salarios return number
  as
  begin
     return salario;
  end;
end;

select p.primeiroNome, p.salario from tb_pessoa p order by salario desc;