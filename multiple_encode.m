function x = multiple_encode(str)
	
	l1 = length(str);
  
	% Contorul se foloseste pentru a se cunoaste pozitia ultimului caracter in
	% sirul ce trebuie returnat
	contor = 1;
	for i=1:l1
  
		% Se stocheaza si se codifica cate un caracter
		c = str(i);
		sir = morse_encode(c);
		l2 = length(sir);
    
		% Se atribuie sirului ce trebuie returnat secventa de '.' si '-'
		% corespunzatore caracterului
		for j = 1:l2
			x(contor) = sir(j);
			contor++;
		endfor
    
		% Se adauga un spatiu daca nu este elementul final
		if i != l1
			x(contor) = ' ';
			contor = contor + 1;
		endif
	endfor
	
endfunction
    