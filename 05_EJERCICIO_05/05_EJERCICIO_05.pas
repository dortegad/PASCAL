program fechacorrecta (input,output);
   const  annoactual=1995;
   var dia, mes, anno:integer;
       bisiesto:boolean; {Indica si un año es o no bisiesto}
       limite:integer;   {Núm. maximo de días que puede tener un mes}
begin
  writeln('Introduzca una fecha en la forma dd mm aa');
  read(dia,mes,anno);
  if (anno>0) and (anno<annoactual) then
    begin
      bisiesto:=((anno mod 4=0)and(anno mod 100<>0))or(anno mod 400=0);
      if (mes>0)and(mes<13) then
        begin
          case mes of
            1,3,5,7,8,10,12:limite:=31;
            2: if bisiesto then limite:=29
                           else limite:=28;
            4,6,9,11:limite:=30
          end;
          if (dia>0) and (dia<=limite)
            then writeln(dia,'/',mes,'/',anno,' es una fecha correcta')
            else writeln(dia,'/',mes,'/',anno,' es una fecha incorrecta')
        end
      else writeln(dia,'/',mes,'/',anno,' es una fecha incorrecta')
    end
  else writeln(dia,'/',mes,'/',anno,' es una fecha incorrecta')
end.
