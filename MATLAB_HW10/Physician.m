
classdef Physician < handle & Employee

properties (Access = public)
% 	first_name; % inherited
% 	last_name;  % inherited
% 	uid;        % inherited
% 	dept;       % inherited
	specialty;
    patient_list;
    salary;
end


  % ==========================
	methods (Access = public)
  % ==========================
	function ph = Physician(first_name,last_name,dept,specialty)
		ph@Employee(first_name,last_name,dept);
		ph.specialty = specialty;
        ph.patient_list={};
        ph.salary=1500;
    end
    function add_patient_to_physician_list(ph,pt)
        ph.patient_list{end+1}=pt;
    end
    function remove_patient_from_physician_list(ph,pt)
        c=ismember(pt,ph.patient_list);
        ph.patient_list(c)=[];
    end
	end % public methods
end

