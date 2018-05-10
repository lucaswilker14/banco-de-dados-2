create or replace TRIGGER atualizabalancoauto
AFTER INSERT OR DELETE OR UPDATE ON aluno
BEGIN
    atualizabalancomanual();
END;

