program EJEMPLO (input,output);
	const
		FICHERO_ORIGEN = 'c:\PRUEBA\FicheroPersonas.bin';
		NUM_MAX_PERSONAS = 100;

	type
		TSexo = (mujer,hombre);
		TPersona = record
						edad : integer;
						sexo : TSexo;
					end;

	procedure presentarPersona(numPersona : integer; persona : TPersona);
	begin
		writeln('DATOS PERSONA - ',numPersona);
		writeln('Edad : ',persona.edad);
		write('Sexo : ');
		if (persona.sexo = hombre) then
			writeln('hombre')
		else
			writeln('mujer');
	end;

	var
		personas : array [1..NUM_MAX_PERSONAS] of Tpersona;
   		fichero : file of TPersona;
   		cont : integer;
   		numPersonas : integer;
begin
	assign(fichero,FICHERO_ORIGEN);
	reset(fichero);

	numPersonas := 0;
	while (not eof(fichero)) do
	begin
		numPersonas := numPersonas + 1;
		read(fichero,personas[numPersonas]);
	end;

	for cont := 1 to numPersonas do
		presentarPersona(cont,personas[cont]);

	close(fichero);
	readln();
end.
