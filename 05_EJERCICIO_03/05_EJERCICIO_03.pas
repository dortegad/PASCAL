program floydnum (input,output);
   var
       numero:integer; {Último número que se va a escribir}
       linea:integer;
       columna:integer;
       i:integer;
begin

{Lectura de datos. Controla que el número sea >0}
  writeln('Introduzca el número hasta el que se va a escribir el triángulo');
  readln(numero);
  while numero<=0 do
    begin
      writeln('El número debe ser mayor que cero. Vuelva a introducir los datos');
      readln(numero)
    end;

{Cálculo y escritura del triángulo de Floyd hasta un número dado}
  linea:=1;
  columna:=1;
  for i:=1 to numero do
    begin
      write(i:4);
      columna:=columna+1;
      if columna>linea then
        begin
          writeln;
          columna:=1;
          linea:=linea+1;
        end
    end
end.
