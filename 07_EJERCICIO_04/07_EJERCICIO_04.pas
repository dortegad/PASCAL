program cantidadDeDigitos (input,output);
	var
   		numero, numDigitos : integer;

   procedure pedirNumero(var num: integer);
   begin
  		writeln('Introduzca numero:');
  		readln(num);
   end;

   function cantidadDigitos(num:integer):integer;
   begin
   		if ((num div 10) = 0) then
   			cantidadDigitos := 1
   		else
   			cantidadDigitos := 1 + cantidadDigitos(num div 10);
   end;

begin
	pedirNumero(numero);
	numDigitos := cantidadDigitos(numero);
	writeln('El numero ',numero,' tiene ',numDigitos,' digitos.');

	readln();
end.
