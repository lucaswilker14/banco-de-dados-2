create or replace type lutador as object (
  codigo number,
  nome varchar2(30)
);

create or replace type arbitro as object (
  codigo number,
  nome varchar2(30)
);

create or replace type luta as object (
    codigo number,
    dataDaLuta date,
    l1 ref lutador,
    l2 ref lutador,
    vendedor ref lutador,
    arbitroDaLuta ref arbitro
);

create table tb_lutador of lutador (
 constraint tb_lutador_pk primary key (codigo)
);

create table tb_arbitro of arbitro (
 constraint tb_arbitro_pk primary key (codigo)
);

create table tb_luta of luta (
 constraint tb_luta_pk primary key (codigo),
 constraint l1_fk foreign key (l1) references tb_lutador,
 constraint l2_fk foreign key (l2) references tb_lutador,
 constraint vencedor_fk foreign key (vendedor) references tb_lutador,
 constraint arbitroDaLuta_fk foreign key (arbitroDaLuta) references tbtb_arbitro
);

alter type luta add member function qnt_lutas return number cascade;

create or replace type body luta
as
    member function qnt_lutas return number
    as
        contador number;
    begin
        select count(*) into contador from tb_luta l where (DEREF(self.l1).codigo = DEREF(l.l1).codigo and DEREF(self.l2).codigo = DEREF(l.l2).codigo) or (DEREF(self.l1).codigo = DEREF(l.l2).codigo and DEREF(self.l2).codigo = DEREF(l.l1).codigo);
        return contador;
    end;
end;

insert into tb_lutador values(lutador(1, 'x'));
insert into tb_lutador values(lutador(2, 'y'));
insert into tb_lutador values(lutador(3, 'z'));

insert into tb_arbitro values(arbitro(4, 'w'));

insert into tb_luta values(luta(3, TO_DATE('04/05/2004', 'dd/mm/yyyy'), (select REF(l) from tb_lutador l where l.codigo = 2), (select REF(l) from tb_lutador l where l.codigo = 3), (select REF(l) from tb_lutador l where l.codigo = 1), (select REF(l) from tb_arbitro l where l.codigo = 4)));

select l.qnt_lutas() from tb_luta l;
