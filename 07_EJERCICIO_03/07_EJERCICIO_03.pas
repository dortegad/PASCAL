program escribirNumeros (input,output);
	var
   		numInicial, numfinal : integer;

   procedure escribeNumeros(origen:integer; destino:integer);
   begin
   		if (origen <= destino) then
   		begin
   			write(origen,' ');
   			escribeNumeros(origen+1,destino);
   		end;
   end;

begin
	writeln('Introduzca numero inicial:');
  	readln(numInicial);
  	writeln('Introduzca numero final:');
  	readln(numFinal);

  	escribeNumeros(numInicial,numFinal);

	readln();
end.
