program multiplicaPorSumas (input,output);
	var
   		numero1, numero2, resultado : integer;

   function multiplica(num1:integer;num2:integer):integer;
   begin
   		if (num2 = 1) then
   			multiplica := num1
   		else
   			multiplica := num1 + multiplica(num1,num2-1);
   end;

begin
	writeln('Introduzca numero 1:');
	readln(numero1);
	writeln('Introduzca numero 2:');
	readln(numero2);
	resultado := multiplica(numero1,numero2);
	writeln('El numero ',numero1,' multiplicado por ',numero2,' es ', resultado,'.');

	readln();
end.

