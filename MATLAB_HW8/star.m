classdef star < celestial_body
    methods
        function obj=star(name,initial_location)
            obj@celestial_body(name, initial_location);
        end
        function cur_location = get_location(star_obj,t)
            cur_location=star_obj.initial_location;
        end
    end
end