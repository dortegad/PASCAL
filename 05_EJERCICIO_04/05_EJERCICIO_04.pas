program hora (input,output);
   var
       horas:integer;
       minutos:integer;
       segundos:integer;

begin

{Lectura de datos}
  writeln('Introduzca una hora en la forma hh mm ss');
  readln(horas, minutos, segundos);

{Comprobación de la corrección de la hora}
  while (horas>=0) and (minutos>=0) and (segundos>=0) do
    begin
     if (horas<=23) and (minutos<=59) and (segundos<=59)
       then writeln(horas,':',minutos,':',segundos,' es una hora correcta')
       else writeln(horas,':',minutos,':',segundos,' no es una hora correcta');
     readln (horas,minutos,segundos);
    end
end.

