program latino (input,output);
  var
  	orden:integer;
  	fila:integer;
  	columna:integer;

begin {Programa principal}
  writeln('Introduzca el orden del cuadrado');
  readln(orden);
  writeln('El cuadrado latino de orden ',orden,' es:');
  for fila:=1 to orden do
    begin
      for columna:=1 to orden do
        if columna>=fila then
        	write(columna-fila+1:3)
      	else
      		write(orden+columna-fila+1:3);
      writeln;
    end
end.
