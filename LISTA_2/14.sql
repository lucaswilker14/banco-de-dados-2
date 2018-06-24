insert into participantes values (t_participante(7369,'ALAN SMITH','ANALYST', 7902, TO_DATE('12/JAN/1980', 'dd/mm/yyyy'), 800, 20));
insert into participantes values (t_participante(7499,'ALLEN TOWNSEND','ANALYST', 7698, TO_DATE('20/NOV/1981', 'dd/mm/yyyy'), 1600, 30));
insert into participantes values (t_participante(7521,'DAVID WARD','MANAGER', 7698, TO_DATE('22/NOV/1981', 'dd/mm/yyyy'), 1250, 30));

insert into projetos values (projeto_type(101, 'Emarald', null, TO_DATE('10/JAN/1998','dd/mm/yyyy'), 300, t_modulotbl(
    t_modulo(1011, 'Market', NULL, TO_DATE('01/JAN/98','dd/mm/yyyy'), 100),
    t_modulo(1012, 'Forecast', NULL, TO_DATE('05/JUL/98','dd/mm/yyyy'), 20),
    t_modulo(1013, 'Preview', NULL, TO_DATE('15/JUL/98','dd/mm/yyyy'), 50),
    t_modulo(1014, 'Release', NULL, TO_DATE('10/JUL/98','dd/mm/yyyy'), 44),
    t_modulo(1015, 'Sales', NULL, TO_DATE('01/JAN/98','dd/mm/yyyy'), 34)
 )
));