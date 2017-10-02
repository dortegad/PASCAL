PROGRAM EJER4;
	USES CRT;
	VAR
		cont1:integer;
		cont2:integer;
		numero:integer;

BEGIN
	ClrScr;
	numero := 7;
	for cont1:=0 to numero do
	begin
		for cont2:=1 to (numero-cont1) do
			write(' ',cont2);
		writeln();
	end;
	readln();
END.
