function m = morse()

	% Nivel 4
	h={'H' {} {}};
	v={'V' {} {}};
	f={'F' {} {}};
	l={'L' {} {}};
	p={'P' {} {}};
	j={'J' {} {}};
	b={'B' {} {}};
	x={'X' {} {}};
	c={'C' {} {}};
	y={'Y' {} {}};
	z={'Z' {} {}};
	q={'Q' {} {}};

	% Nivel 3
	s={'S' h v};
	u={'U' f {}};
	r={'R' l {}};
	w={'W' p j};
	d={'D' b x};
	k={'K' c y};
	g={'G' z q};
	o={'O' {} {}};

	% Nivel 2
	i={'I' s u};
	a={'A' r w};
	n={'N' d k};
	m={'M' g o};

	% Nivel 1
	e={'E' i a};
	t={'T' n m};

	%Nivel 0
	M={'' e t};

	m=M;

endfunction

