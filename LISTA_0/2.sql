DECLARE
    nome VARCHAR2(8) := 'wendley';
    sobrenome VARCHAR2(15) := 'paulo de franca';
BEGIN
   DBMS_OUTPUT.PUT_LINE(nome||' '||sobrenome);
END;
