function dna_sequence_head = create_dna_sequnce_dll(nucl_char_array)
	head_node = dlnode(nucl_char_array(1));
	curr_node = head_node;
	
	for i=2:length(nucl_char_array)
		new_node = dlnode(nucl_char_array(i));
		new_node.insertAfter(curr_node);
		curr_node = new_node;
	end
	
	dna_sequence_head = head_node;
end

