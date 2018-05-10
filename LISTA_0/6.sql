CREATE OR REPLACE PROCEDURE tabuada(valor IN INTEGER)
AS
BEGIN
    FOR mul IN 1..10
    LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(mul)||'X'||TO_CHAR(valor)||'='||TO_CHAR(valor*mul));
    END LOOP;
END;
-- chamada a procedure
BEGIN
    tabuada(5);
END;
