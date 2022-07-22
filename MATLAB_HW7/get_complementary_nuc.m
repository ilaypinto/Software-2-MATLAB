function result=get_complementary_nuc(letter)
	switch letter
		case 'A'
			result = 'T';
		case 'T'
			result = 'A';
		case 'G'
			result = 'C';
		case 'C'
			result = 'G';
		otherwise
			error('Input is unsupported');
	end
end