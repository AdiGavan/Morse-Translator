function x = morse_encode(c)
  
	% Face functia sa fie case insensitive
	c = upper(c);
	s = morse();
  
	% Conditii de eroare
	if (c < 'A') || (c > 'Z') || (length(c) == 0) || (length(c) > 1)
		x = '*';
		return
	endif
	
	% Caut in nivel 1
	for i = 2:3
    
		% Se verifica daca se gaseste caracterul
		if s{i}{1} == c
    
			% I se atribuie sirului caracterul "." sau "-"
			x(1) = morse_encode_link(i);
			return;
		endif
	endfor
  
	% Caut in nivel 2
	for i = 2:3
  
		% I se atribuie sirului caracterul "." sau "-" pentru nivelul 1
		x(1) = morse_encode_link(i);
		for j = 2:3
    
			% Se verifica daca se gaseste caracterul
			if s{i}{j}{1} == c
      
				% I se atribuie sirului caracterul "." sau "-" pentru nivelul 2
				x(2) = morse_encode_link(j);
				return
			endif
		endfor
	endfor
   
	% Caut in nivel 3
	for i = 2:3
   
		% I se atribuie sirului caracterul "." sau "-" pentru nivelul 1
		x(1) = morse_encode_link(i);
		for j = 2:3
    
			% I se atribuie sirului caracterul "." sau "-" pentru nivelul 2
			x(2) = morse_encode_link(j);
			for k = 2:3
        
				% Se verifica daca se gaseste caracterul
				if s{i}{j}{k}{1} == c
        
					% Se atribuie sirului caracterul "." sau "-" pentru nivel 3
					x(3) = morse_encode_link(k);
					return
				endif
			endfor
		endfor
   endfor
   
	% Caut in nivel 4
	for i = 2:3
    
		% I se atribuie sirului caracterul "." sau "-" pentru nivelul 1
		x(1) = morse_encode_link(i);
		for j = 2:3
    
			% I se atribuie sirului caracterul "." sau "-" pentru nivelul 2
			x(2) = morse_encode_link(j);
			for k = 2:3
      
				% I se atribuie sirului caracterul "." sau "-" pentru nivelul 3
				x(3) = morse_encode_link(k);
				for l = 2:3
        
					% Se verifica daca se intra intr-o celula inexistenta
					if length(s{i}{j}{k}{l}) == 0
						continue
					endif
          
					% Se verifica daca se gaseste caracterul
					if s{i}{j}{k}{l}{1} == c
          
						% I se atribuie sirului caracterul "." sau "-" 
						% pentru nivelul 4
						x(4) = morse_encode_link(l);
						return
					endif
				endfor
			endfor
		endfor
	endfor
	
endfunction
