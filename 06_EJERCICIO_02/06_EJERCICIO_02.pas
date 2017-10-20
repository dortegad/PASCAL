program fechacorrecta (input,output);
   const  annoactual=1995;
   var dia, mes, anno:integer;
       numDias:integer;   {Núm. maximo de días que puede tener un mes}

   function bisiesto (anno:integer):boolean;
   begin
   		bisiesto:=((anno mod 4=0)and(anno mod 100<>0))or(anno mod 400=0);
   end;

   function Numerodias (anno, mes:integer):integer;
   var
   		numDias:integer;
   begin
   		numDias := -1;

   		if (mes>0)and(mes<13) then
   		begin
    		case mes of
        		1,3,5,7,8,10,12:numDias:=31;
            	4,6,9,11:numDias:=30;
            	2: begin
        			if bisiesto(anno) then
        				numDias:=29
           			else
           				numDias:=28;
           		  end
        	end;
    	end;
    	Numerodias := numDias;
   end;


begin
  writeln('Introduzca una fecha en la forma dd mm aa');
  read(dia,mes,anno);
  if (anno>0) and (anno<annoactual) then
  begin
      numDias := Numerodias(anno,mes);
      if (dia>0) and (dia<=numDias) then
      	writeln(dia,'/',mes,'/',anno,' es una fecha correcta')
      else
      	writeln(dia,'/',mes,'/',anno,' es una fecha incorrecta')
  end
  else
  	writeln(dia,'/',mes,'/',anno,' es una fecha incorrecta')
end.
