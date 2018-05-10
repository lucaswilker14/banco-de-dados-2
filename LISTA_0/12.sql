CREATE OR REPLACE FUNCTION padraoInternet(velocidadeInternet NUMBER)
RETURN VARCHAR2
AS
BEGIN
   IF velocidadeInternet = 10 THEN
       RETURN '10mb/s – Ethernet (10 base T)';
   ELSIF velocidadeInternet = 100 THEN
       RETURN '100mb/s – Fast Ethernet (100 base T)';
   ELSIF velocidadeInternet = 1000 THEN
       RETURN '1000mb/s – Giga Ethernet (1000 base T)';   
   ELSE
       RETURN 'Padrão inexistente'; 
   END IF;
END;

DECLARE
BEGIN
   DBMS_OUTPUT.PUT_LINE(padraoInternet(10));
   DBMS_OUTPUT.PUT_LINE(padraoInternet(100));
   DBMS_OUTPUT.PUT_LINE(padraoInternet(1000));
   DBMS_OUTPUT.PUT_LINE(padraoInternet(11));
END;
