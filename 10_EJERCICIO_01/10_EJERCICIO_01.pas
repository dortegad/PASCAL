program EJEMPLO (input,output);
	const
		FICHERO_ORIGEN = 'c:\PRUEBA\FicheroPascal.txt';
		FICHERO_DESTINO = 'c:\PRUEBA\FicheroPascalSinComentarios.txt';
	var
   		ficheroOrigen : text;
   		ficheroDestino : text;

   		caracter : char;
   		caracter2 : char;
   		sigCaracter : char;
		dentroDeComentario : boolean;

begin
	assign(ficheroOrigen,FICHERO_ORIGEN);
	assign(ficheroDestino,FICHERO_DESTINO);

	reset(ficheroOrigen);
	rewrite(ficheroDestino);

	dentroDeComentario := false;
	read(ficheroOrigen,caracter);
	while (not eof(ficheroOrigen)) do
	begin
		if (not dentroDeComentario) then
		begin
			if (caracter = '(') then
			begin
				read(ficheroOrigen,caracter2);
				if (caracter2 = '*') then
				begin
					dentroDeComentario := true;
					read(ficheroOrigen,sigCaracter);
				end
				else
					sigCaracter := caracter2;
			end
			else
			begin
				if (caracter = chr(123)) then
					dentroDeComentario := true
				else
				begin
					write(caracter);
					write(ficheroDestino,caracter);
				end;
				read(ficheroOrigen,sigCaracter);
			end;
		end
		else
		begin
			if (caracter = '*') then
			begin
				read(ficheroOrigen,caracter2);
				if (caracter2 = ')') then
				begin
					dentroDeComentario := false;
					read(ficheroOrigen,sigCaracter);
				end
				else
					sigCaracter := caracter2;
			end
			else
			begin
				if (caracter = chr(125)) then
					dentroDeComentario := false;
				read(ficheroOrigen,sigCaracter);
			end;
		end;

		caracter := sigCaracter;
	end;
	close(ficheroOrigen);
	close(ficheroDestino);

	readln();
end.
