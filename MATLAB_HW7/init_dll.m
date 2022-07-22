function dll = init_dll(array)
    % init first node
    head_node = dlnode(array(1));
    curr_node = head_node;

    % initialize dll
    for n=2:length(array)
        next_node = dlnode(array(n));
        insertAfter(next_node, curr_node);
        curr_node = curr_node.Next; 
    end
    dll = dlnode_head(curr_node);
    
end