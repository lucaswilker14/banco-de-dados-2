CREATE OR REPLACE PROCEDURE escreva(arg1 VARCHAR2, arg2 NUMBER)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE(arg1||' '||TO_CHAR(arg2));
END;
