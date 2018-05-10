CREATE OR REPLACE FUNCTION ConvertData(data VARCHAR2)
RETURN VARCHAR2
AS
BEGIN
  RETURN TO_CHAR(TO_DATE(data, 'DD/MM/YYYY'), 'DD "de" fmMonth "de" YYYY','NLS_DATE_LANGUAGE=PORTUGUESE');
END;

DECLARE
BEGIN
   DBMS_OUTPUT.PUT_LINE(ConvertData('12/03/2019'));
END;
