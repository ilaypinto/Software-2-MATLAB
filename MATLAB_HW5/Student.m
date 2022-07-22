classdef Student
    properties(Access = public)
        State;
    end
    methods(Access = public)
        function obj=Student()
            obj.State=StudentState.Sleeping;
        end
        function [obj,second_student]=talk_to(obj,second_student)
            obj.State= StudentState.Talking;
            second_student.State=StudentState.Talking;
        end
    end
end