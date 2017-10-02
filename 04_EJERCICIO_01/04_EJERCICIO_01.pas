PROGRAM EJER31;
	USES CRT;
	VAR
		base:real;
		exponente:integer;
		potencia:real;

		cont:integer;
BEGIN
	ClrScr;
	WRITE('INTRODUCE LA BASE : ');
	READLN(base);
	WRITE('INTRODUCE EL EXPONENTE : ');
	READLN(exponente);
	potencia := 1;
	for cont:=1 to exponente do
		potencia := potencia * base;
	writeln( BASE , ' ELEVADO A ', exponente ,' es ', potencia );
	READLN();
END.
