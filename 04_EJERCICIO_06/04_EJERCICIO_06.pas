PROGRAM EJER6;
	USES CRT;
	VAR
		votosCandidato1:integer;
		votosCandidato2:integer;
		votosCandidato3:integer;
		votosCandidato4:integer;
		votosNulos:integer;
		votosBlancos:integer;

		cont:integer;
BEGIN
	ClrScr;
	write('VOTOS CANDIDATO 1 : ');
	readln(votosCandidato1);
	write('VOTOS CANDIDATO 2 : ');
	readln(votosCandidato2);
	write('VOTOS CANDIDATO 3 : ');
	readln(votosCandidato3);
	write('VOTOS CANDIDATO 4 : ');
	readln(votosCandidato4);
	write('VOTOS NULOS  : ');
	readln(votosNulos);
	write('VOTOS BLANCO : ');
	readln(votosBlancos);

	write('CANDIDATO 1     : ');
	for cont := 1 to votosCandidato1 do
		write('*');
	writeln();

	write('CANDIDATO 2     : ');
	for cont := 1 to votosCandidato2 do
		write('*');
	writeln();

	write('CANDIDATO 3     : ');
	for cont := 1 to votosCandidato3 do
		write('*');
	writeln();

	write('CANDIDATO 4     : ');
	for cont := 1 to votosCandidato4 do
		write('*');
	writeln();

	write('VOTOS NULOS     : ');
	for cont := 1 to votosNulos do
		write('*');
	writeln();

	write('VOTOS EN BLANCO : ');
	for cont := 1 to votosBlancos do
		write('*');
	writeln();

	readln();
END.
