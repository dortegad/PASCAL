program sumaRecursiva (input,output);
	var
   		numero, resultado : integer;

   procedure pedirNumero(var num: integer);
   begin
  		writeln('Introduzca numero:');
  		readln(num);
   end;

   function suma(num:integer):integer;
   begin
   		if (num=1) then
   			suma := 1
   		else
   			suma := num + suma(num-1);
   end;

begin
	pedirNumero(numero);
	resultado := suma(numero);
	writeln('La suma es :',resultado);

	readln();
end.
