program cuadradoperfecto (input,output);
   var
       numero:integer; (*Numero que se lee para determinar
                       si es cuadrado perfecto*)

begin

{Lectura de datos. Se comprueba que el número sea positivo}
  writeln('Introduzca un numero');
  read(numero);
  while numero>=0 do
    begin
      if sqr(round(sqrt(n)))=numero
        then writeln(numero,' es cuadrado perfecto')
        else writeln(numero,' no es cuadrado perfecto');
      read(numero)
    end
end.
