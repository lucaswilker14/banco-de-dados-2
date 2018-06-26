create or replace type body t_empregado as
 order member function tempo_servico(e t_empregado) return number
 as
 begin
    if (self.tempoServicoAnos < e.tempoServicoAnos) then
        return -1;
    elsif (self.tempoServicoAnos > e.tempoServicoAnos) then
        return 1;
    else
        return 0;
    end if;
 end;
end;

select e.* from tb_empregado e order by e.tempoServicoAnos desc;