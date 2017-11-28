program EJEMPLO (input,output);
	const
		FICHERO_DESTINO = 'c:\PRUEBA\FicheroPersonas.bin';
		NUM_PERSONAS = 5;

	type
		TSexo = (mujer,hombre);
		TPersona = record
						edad : integer;
						sexo : TSexo;
					end;

	procedure leerPersona(numPersona : integer; var persona : TPersona);
	var
		sexo:char;
	begin
		writeln('DATOS PERSONA - ',numPersona);
		write('Edad?');
		readln(persona.edad);
		write('Sexo?');
		readln(sexo);
		if (sexo = 'h') then
			persona.sexo := hombre
		else
			persona.sexo := mujer;
	end;

	var
		personas : array [1..NUM_PERSONAS] of Tpersona;
   		fichero : file of TPersona;
   		cont : integer;
begin
	for cont := 1 to NUM_PERSONAS do
		leerPersona(cont,personas[cont]);

	assign(fichero,FICHERO_DESTINO);
	rewrite(fichero);

	for cont :=1 to NUM_PERSONAS do
		write(fichero,personas[cont]);

	close(fichero);
	readln();
end.
