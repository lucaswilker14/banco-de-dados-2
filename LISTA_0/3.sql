DECLARE
    a INTEGER;
    b INTEGER;
    c REAL;
    d REAL;
BEGIN
    a := 10;
    b := 25;
    c := 15;
    d := 5.5;
    a := b * c;
    c := d * b + c;
    b := b * b + 18000;
    a := a - a;
    d := 52.55;
    escreva('O valor de A=',a);
    escreva('O valor de B=',b);
END;
