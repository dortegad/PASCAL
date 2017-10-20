program ordenar (input,output);
	var
   		numero1, numero2, numero3 : integer;

   procedure pedirNumero(var num: integer);
   begin
  		writeln('Introduzca numero:');
  		readln(num);
   end;

   procedure ordenar(var num1:integer; var num2:integer);
   		var aux:integer;
   begin
   		if (num1 > num2) then
   		begin
   			aux := num2;
   			num2 := num1;
   			num1 := aux;
   		end;
   end;

begin
	pedirNumero(numero1);
	pedirNumero(numero2);
	pedirNumero(numero3);

	ordenar(numero1,numero2);
	ordenar(numero1,numero3);
	ordenar(numero2,numero3);

	writeln('Los numero ordenados son :',numero1,' ',numero2,' ',numero3);

	readln();
end.
