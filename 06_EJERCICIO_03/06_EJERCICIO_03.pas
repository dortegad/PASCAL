program descomposicion (input,output);
   var
   		numero:integer;
   		contadorPrimos:integer;

   function esPrimo(numero:integer):boolean;
   var
   		primo:boolean;
   		contador:integer;
   begin
   		primo:=true;
   		contador:=2;
   		while (primo) and (contador<numero) do
   		begin
   			primo:= ((numero mod contador)<>0);
   			contador:=contador+1;
   		end;
   		esPrimo := primo;
   end;

   function esDivisible(numero:integer; divisor:integer):boolean;
   begin
   		esDivisible := (numero mod divisor)=0;
   end;

begin
  writeln('Introduzca numero para factorizar');
  readln(numero);
  contadorPrimos:=1;
  while (numero > 1) do
  begin
  		contadorPrimos:=contadorPrimos+1;
  		if (esPrimo(contadorPrimos)) then
  		begin
  			if (esDivisible(numero,contadorPrimos)) then
  			begin
  				writeln(contadorPrimos);
  				numero := (numero div contadorPrimos);
  				contadorPrimos:=1;
  			end;
  		end;
  end;

  readln();
end.
