CREATE OR REPLACE TYPE t_endereco AS OBJECT (
    rua varchar2(60),
    cidade varchar2(30),
    estado char(2),
    CEP char(8) 
);