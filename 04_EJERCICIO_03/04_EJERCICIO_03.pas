PROGRAM EJER3;
	USES CRT;
	VAR
		numeroLeido:longInt;
		aux:LongInt;
		divNumero:LongInt;
		modNumero:integer;
		numeroInvertido:longInt;
BEGIN
	ClrScr;
	write('INTRODUCE NUMERO : ');
	readln(numeroLeido);

	aux := numeroLeido;
	numeroInvertido := 0;
	repeat
		divNumero := aux div 10;
		modNumero := aux mod 10;
		aux := divNumero;
		numeroInvertido := (numeroInvertido*10) + modNumero;
	until (divNumero = 0);
	writeln(' numero invertido : ', numeroInvertido );
	if (numeroLeido = numeroInvertido) then
		writeln('El numero es capicua')
	else
		writeln('el numero no es capicua');
	readln();
END.
