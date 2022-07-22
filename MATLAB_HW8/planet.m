classdef planet < celestial_body
    properties
        star;
        period_time;
    end
    methods
        function obj = planet(name, initial_location, star, period_time)
            obj@celestial_body(name, initial_location);
            obj.star=star;
            obj.period_time=period_time;
        end
function cur_location = get_location(planet_obj,t)
            c=planet_obj.star.initial_location(1)-planet_obj.initial_location(1);
            d=planet_obj.star.initial_location(2)-planet_obj.initial_location(2);
            r_orbit=hypot(c,d);
            a=planet_obj.initial_location(1)-planet_obj.star.initial_location(1);
            b=planet_obj.initial_location(2)-planet_obj.star.initial_location(2);
            arch=2.*pi.*t./planet_obj.period_time;
            thetta=acos(a/r_orbit);
            if asin(b/r_orbit)<0
                thetta=-thetta+2*pi;
            end
            thetta=thetta+arch;
            x=planet_obj.star.initial_location(1)+r_orbit.*cos(thetta);
            y=planet_obj.star.initial_location(2)+r_orbit.*sin(thetta);
            cur_location=[x,y];
        end
    end
end