create type body t_estudante as
 static function alunos_projeto return number
 is
    v_number_of_students number;
 begin
    select count(e.temProjeto) into v_number_of_students from tb_estudante e where e.temProjeto = 1;
    return v_number_of_students;
 end;
end;