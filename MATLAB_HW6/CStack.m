classdef CStack < handle
	%   s = CStack(c);  c is a cell, and could be omitted
	%   s.size()        returns the numbre of elements
	%   s.isempty()     returns true when the stack is empty
	%   s.empty()       deletes the content of the stack
	%   s.push(el)      pushes el to the top of stack
	%   s.pop()         pops out the top of the stack, and returns the element
	%   s.top()         returns the top element of the stack
	%   s.remove()      removes all the elements in the stack
	%   s.content()     returns all the data of the stack (in the form of a cell with size [s.size(), 1]
	%
	% Copyright: zhang@zhiqiang.org, 2010.
	% url: http://zhiqiang.org/blog/it/matlab-data-structures.html
	
	properties (Access = private)
		buffer;
		cur;
		capacity;
	end
	
	methods
		
		function obj = CStack(c)
			if nargin >= 1 && iscell(c)
				obj.buffer = c(:);
				obj.cur = numel(c);
				obj.capacity = obj.cur;
			elseif nargin >= 1
				obj.buffer = cell(100, 1);
				obj.cur = 1;
				obj.capacity =100;
				obj.buffer{1} = c;
			else
				obj.buffer = cell(100, 1);
				obj.capacity = 100;
				obj.cur = 0;
			end
		end
		
		function s = size(obj)
			s = obj.cur;
		end
		
		function remove(obj)
			obj.cur = 0;
		end
		
		function b = empty(obj)
			b = obj.cur;
			obj.cur = 0;
		end
		
		function b = isempty(obj)
			b = ~logical(obj.cur);
		end
		
		function push(obj, el)
			if obj.cur >= obj.capacity
				obj.buffer(obj.capacity+1:2*obj.capacity) = cell(obj.capacity, 1);
				obj.capacity = 2*obj.capacity;
			end
			obj.cur = obj.cur + 1;
			obj.buffer{obj.cur} = el;
		end
		
		function el = top(obj)
			if obj.cur == 0
				el = [];
				warning('CStack:No_Data', 'trying to get top element of an emtpy stack');
			else
				el = obj.buffer{obj.cur};
			end
		end
		
		function el = pop(obj)
			if obj.cur == 0
				el = [];
				warning('CStack:No_Data', 'trying to pop element of an emtpy stack');
			else
				el = obj.buffer{obj.cur};
				obj.cur = obj.cur - 1;
			end
		end
		
		function disp(obj)
			if obj.cur
				for i = 1:obj.cur
					disp([num2str(i) '-th element of the stack:']);
					disp(obj.buffer{i});
				end
			else
				disp('The stack is empty');
			end
		end
		
		function c = content(obj)
			c = obj.buffer(1:obj.cur);
        end
        
        function reverse(obj)
            c={};
            j=1;
            while ~isempty(obj)
            el=pop(obj); c{j}=el; j=j+1;
            end
            for i=1:length(c)
                push(obj,c{i});
            end
        end
	end
end