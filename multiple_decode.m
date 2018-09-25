function x = multiple_decode(sir)

	l = length(sir);
	k = 1;
  
	% Contorul se foloseste pentru a se cunoaste pozitia ultimului caracter in
	% sirul ce trebuie returnat
	contor = 1;
	vector = '';
  
	for i=1:l
  
		% Se verifica cand se incheie codul unei litere
		if sir(i) == ' '
      
			% Cazul cand avem spatiu la inceput sau spatiu dupa spatiu
			if length(vector) == 0
				continue
			endif
      
			% Se decodifica fiecare caracter
			x(k) = morse_decode(vector);
			k++;
      
			% Se face reinitializarea vectorului
			vector = '';
			contor = 1;
			continue
		endif
    
		% Cazul cand se ajunge la final
		if i == l
			vector(contor) = sir(i);
			x(k) = morse_decode(vector);
			return
		endif
		vector(contor) = sir(i);
		contor++;
	endfor
	
 endfunction