function x = morse_decode(sir)
  
	lungime = length(sir);
  
	% Se verifica daca lungimea sirului este nula sau daca depaseste numarul
	% de nivele al arborelui
	if length(sir) == 0 || length(sir) > 4
		x = '*';
		return
	endif
	s = morse();
	for i=1:lungime
  
		% Se verifica daca caracterul este '.' sau '-'
		if((sir(i) == '.') || (sir(i) == '-'))

			% Daca este punct se duce in stanga
			if (sir(i) == '.')
				s = s{2};
			endif
        
			% Daca este linie se duce in dreapta
			if (sir(i) == '-')
				s = s{3};
			endif
  
			% Daca celula este nula insemana eroare
			if length(s) == 0
				x ='*';
				return
			endif
		else
			x = '*';
			return
		endif
	endfor
  
	% Se atribuie caracterul corespunzator secventei
	s = s{1};
	x = s;
	
endfunction
