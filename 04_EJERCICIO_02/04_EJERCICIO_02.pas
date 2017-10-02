PROGRAM EJER2;
	USES CRT;
	VAR
		numeroLeido:real;
		acumulado:real;
		cuentaNumeros:integer;
		media:real;

		cont:integer;
BEGIN
	ClrScr;
	cuentaNumeros := 0;
	acumulado := 0;
	media := 0;
	numeroLeido := 0;
	repeat
		WRITE('INTRODUCE NUMERO : ');
		READLN(numeroLeido);
		if (numeroLeido > 0) then
		begin
			acumulado := acumulado + numeroLeido;
			cuentaNumeros := cuentaNumeros + 1;
		end;
	until (numeroLeido < 0);
	media := acumulado / cuentaNumeros;
	writeln(' LA MEDIA ES : ', media:0:2 );
	READLN();
END.
