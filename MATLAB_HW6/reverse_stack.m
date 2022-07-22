function reverse_stack(s)
    help1=CStack();
    help2=CStack();
    while ~isempty(s)
        el=pop(s); push(help1,el);
    end
    while ~isempty(help1)
        el=pop(help1); push(help2,el);
    end
    while ~isempty(help2)
        el=pop(help2); push(s,el);
    end
end