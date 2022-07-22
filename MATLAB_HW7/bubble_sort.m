function bubble_sort(dll)
    nswaps = 1;
    node = dll;
    while nswaps ~= 0
        nswaps = 0;
        while ~isempty(node.Next)
            if (node.Data > node.Next.Data)
                swap_node_with_next(node);
                nswaps = nswaps + 1;
            else
                node = node.Next;
            end        
        end    
        node = node.dlnode_head;
    end
    nswaps = 1;
    while nswaps ~= 0
        nswaps = 0;
        while ~isempty(node.Next)
            if (bitget(node.Data,1))&&(~bitget(node.Next.Data,1))
                swap_node_with_next(node);
                nswaps = nswaps + 1;
            else
                node = node.Next;
            end        
        end
        node = node.dlnode_head;
        disp_dlnode_list(node);
    end
end

% swap node with next
function swap_node_with_next(node)
    node_curr = node;
    node_next = node.Next;
    node_curr.insertAfter(node_next);
end