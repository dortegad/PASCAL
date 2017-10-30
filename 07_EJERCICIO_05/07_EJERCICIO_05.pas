program CalculoDePotencia (input,output);
	var
   		numero, potencia, resultado : integer;

   function calculaPotencia(num:integer;pot:integer):integer;
   begin
   		if (pot = 1) then
   			calculaPotencia := num
   		else
   			calculaPotencia := num * calculaPotencia(num,pot-1);
   end;

begin
	writeln('Introduzca numero:');
	readln(numero);
	writeln('Introduzca potencia:');
	readln(potencia);
	resultado := calculaPotencia(numero,potencia);
	writeln('El numero ',numero,' elevado a ',potencia,' es ', resultado,'.');

	readln();
end.
