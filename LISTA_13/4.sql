create or replace type body t_pessoa2 as
  member function email_pessoa return varchar2
  as
  begin
     return SUBSTR(self.email, 1, INSTR(self.email, '@') - 1);
  end;
end;

select p.email_pessoa() from tb_pessoa p;