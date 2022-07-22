classdef celestial_body < handle
    properties(SetAccess = public)
        name;
    end
    properties(SetAccess= protected)
        initial_location;
    end
    methods(Abstract)
        get_location(obj,t);
    end
    methods
        function obj=celestial_body(name, initial_location)
            obj.name=name;
            obj.initial_location=initial_location;
        end
    end
end