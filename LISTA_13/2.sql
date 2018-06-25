create table tb_pessoa of t_pessoa2;
create table tb_estudante of t_estudante;
create table tb_empregado of t_empregado;

INSERT INTO tb_pessoa VALUES (t_pessoa2('joao', 'silva', 'joao@email.com', 3000, 22));
INSERT INTO tb_pessoa VALUES (t_pessoa2('maria', 'silva', 'maria@email.com', 2000, 25));
INSERT INTO tb_pessoa VALUES (t_pessoa2('Joana', 'silva', 'joana@email.com', 5000, 23));

INSERT INTO tb_estudante VALUES (t_estudante('Matheus', 'matos', 'matheus@email.com', '0', 20, '111465678', 1));
INSERT INTO tb_estudante VALUES (t_estudante('Lucas', 'matos', 'lucas@email.com', '0', 22, '162627209', 0));
INSERT INTO tb_estudante VALUES (t_estudante('Ana', 'matos', 'ana@email.com', '0', 22, '098765432', 1));

INSERT INTO tb_empregado VALUES (t_empregado('THIAGO','111425879', 'DEV', 2));
INSERT INTO tb_empregado VALUES (t_empregado('vitoria','111425879', 'TESTER', 3));
INSERT INTO tb_empregado VALUES (t_empregado('ANA','111425879', 'DEV', 1));