program EJEMPLO (input,output);
	const
		FICHERO_ORIGEN = 'c:\PRUEBA\FicheroPascal.txt';
		FICHERO_DESTINO = 'c:\PRUEBA\FicheroPascalSinComentarios.txt';
	var
   		ficheroOrigen : text;
   		ficheroDestino : text;

   		caracter : char;
		dentroDeComentario : boolean;
begin
	assign(ficheroOrigen,FICHERO_ORIGEN);
	assign(ficheroDestino,FICHERO_DESTINO);

	reset(ficheroOrigen);
	rewrite(ficheroDestino);

	dentroDeComentario := false;

	while (not eof(ficheroOrigen)) do
	begin
		read(ficheroOrigen,caracter);

		if (caracter = chr(123)) then
			dentroDeComentario := true;

		if (not dentroDeComentario) then
		begin
			write(caracter);
			write(ficheroDestino,caracter);
		end;

		if (dentroDecomentario and (caracter=chr(125))) then
			dentroDeComentario := false;
	end;
	close(ficheroOrigen);
	close(ficheroDestino);

	readln();
end.
