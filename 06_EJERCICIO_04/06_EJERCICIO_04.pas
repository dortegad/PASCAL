program fechacorrecta (input,output);
   var elementos:integer;
       combinaciones:integer;

       factorialElementos:longint;
  	   factorialCombinaciones:longint;
  	   factorialElemMenosCombi:longint;

  	   numCombinaciones:longint;

   function calculaFactorial (numero:integer):longint;
   var
   		factorialAux:longInt;
   		cont:integer;
   begin
   		factorialAux := 1;
   		for cont:=numero downto 1 do
   		begin
   			factorialAux := factorialAux*cont;
   		end;
   		calculaFactorial := factorialAux;
   end;

begin
  writeln('Introduzca numero de elementos y numero de combinaciones :');
  read(elementos,combinaciones);

  factorialElementos := calculaFactorial(elementos);
  factorialCombinaciones := calculaFactorial(combinaciones);
  factorialElemMenosCombi := calculaFactorial(elementos-combinaciones);

  numCombinaciones := factorialElementos div (factorialCombinaciones*factorialElemMenosCombi);

  write('El numero de combianciones de ', elementos,
  		  ' elementos tomados de de ', combinaciones,
  		  ' en ', combinaciones, ' es ', numCombinaciones, '.');

  readln();
end.
