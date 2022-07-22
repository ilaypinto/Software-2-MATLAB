classdef Pokemon
    properties(Access = public)
        Type;
        Name;
        Level;
    end
    methods
        function obj=Pokemon(type, name)
            obj.Type=type;
            obj.Name=name;
            obj.Level=0;
        end
    end
    methods(Access=public)
        function speak(obj)
            disp(obj.Name);
        end
        function obj=increase_level(obj)
            obj.Level=obj.Level+1;
        end
        function print_level(obj)
            disp(obj.Level)
        end
        function [obj, opponent, winner]=battle(obj,opponent)
            if (obj.Type==PokemonType.Water && opponent.Type==PokemonType.Fire)
                winner=obj.Name;
                disp("I win");
                increase_level(obj);
            elseif (obj.Type==PokemonType.Fire && opponent.Type==PokemonType.Water)
                winner=opponent.Name;
                disp("I lose");
                increase_level(opponent);
            elseif (obj.Level>opponent.Level)
                winner=obj.Name;
                disp("I win");
                increase_level(obj);
            elseif (obj.Level<opponent.Level)
                winner=opponent.Name;
                disp("I lose");
                increase_level(opponent);
            elseif (obj.Level==opponent.Level)
                winner=obj.Name;
                disp("I win");
                increase_level(obj);
            end
        end
    end
end