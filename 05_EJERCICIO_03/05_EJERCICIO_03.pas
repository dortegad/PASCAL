program floydnum (input,output);
   var
       numero:integer; {�ltimo n�mero que se va a escribir}
       linea:integer;
       columna:integer;
       i:integer;
begin

{Lectura de datos. Controla que el n�mero sea >0}
  writeln('Introduzca el n�mero hasta el que se va a escribir el tri�ngulo');
  readln(numero);
  while numero<=0 do
    begin
      writeln('El n�mero debe ser mayor que cero. Vuelva a introducir los datos');
      readln(numero)
    end;

{C�lculo y escritura del tri�ngulo de Floyd hasta un n�mero dado}
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
