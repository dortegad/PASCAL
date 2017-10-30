program caracteresBlacos (input,output);
	var
   		numeroCaracteres : integer;

   procedure pedirNumero(var num: integer);
   begin
  		writeln('Introduzca numero de caracteres:');
  		readln(num);
   end;

   procedure caracteresBlancos(num:integer);
   begin
   		write(' ');
   		if (num>1) then
 			caracteresBlancos(num-1);
   end;

begin
	pedirNumero(numeroCaracteres);
	caracteresBlancos(numeroCaracteres);
	writeln('se han escrito ',numeroCaracteres,' en blanco');
	readln();
end.
