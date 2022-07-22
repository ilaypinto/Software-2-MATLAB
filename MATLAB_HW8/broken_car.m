classdef broken_car < car
    properties
        faults
        prices
        status = 'pending';
    end
  methods
      function obj = broken_car(c, faults)
          obj@car(c.name, c.owner);
          obj.faults=faults;
          [fault_list,price_list]=load_pricelist(obj);
          obj.prices=[];
          for i=faults
              obj.prices(end+1)=price_list(find(strcmp(fault_list,i)));
          end
      end
      function fcar = fix(obj)
          if obj.status=='handled'
              warning('this car is already fixed')
              fcar=[];
          else
              fcar = fixed_car(obj);
              obj.status='handled';
          end
      end
  end
end