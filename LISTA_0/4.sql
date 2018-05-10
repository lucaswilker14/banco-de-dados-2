DECLARE
    line VARCHAR2(10) := '**********';
BEGIN
    FOR i IN 0..7
    LOOP
         DBMS_OUTPUT.PUT_LINE(line);
    END LOOP;
END;
