PROGRAM EJER4;
	USES CRT;
	VAR
		numeroLeido:integer;
		minimo:integer;
BEGIN
	ClrScr;
	minimo := 0;
	numeroLeido := 0;
	write('INTRIDUCE NUMERO : ');
	readln(numeroLeido);
	minimo := numeroLeido;
	while (numeroLeido <> 0) do
	begin
		write('INTRIDUCE NUMERO : ');
		readln(numeroLeido);
		if ((numeroLeido > 0) and (numeroLeido < minimo)) then
			minimo := numeroLeido;
	end;
	writeln(' EL MINIMO ES : ', minimo );
	READLN();
END.
