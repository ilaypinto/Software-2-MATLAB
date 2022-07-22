classdef car < handle 
    properties
        name
        owner
    end
    
    methods
        function obj = car(number, owner)
            obj.name=number;
            obj.owner=owner;
        end
        
        function [fault_list, price_list] = load_pricelist(obj)
            fault_list = {'dead engine', 'bad carburettor', 'a/c', 'some lie', 'flat tire', 'car body', 'radiator', 'breaks'};
            price_list = [20000, 1000, 800, 400, 500, 950, 1370, 555];
        end
    end
end