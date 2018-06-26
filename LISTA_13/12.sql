alter type t_pessoa2 add constructor function t_pessoa2(primeiroNome varchar2, ultimoNome varchar2, salario number,  idade number) return self as result cascade;


create or replace type body  t_pessoa2 as
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
  constructor function t_pessoa2(primeiroNome varchar2, ultimoNome varchar2, salario number,  idade number) return self as result
  as
  begin
      self.primeiroNome := primeiroNome;
      self.ultimoNome := ultimoNome;
      self.email := CONCAT(CONCAT(CONCAT(primeiroNome, '.'), ultimoNome), '@email.com');
      self.salario := salario;
      self.idade := idade;
      return;
  end;
end;

select p.* from tb_pessoa p;
