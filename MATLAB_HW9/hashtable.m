
classdef hashtable
	
	properties
		keys;
		data;
	end
	
	methods
		
		% Constructor
		function hash = hashtable(varargin)
			if nargin == 1 && isa(varargin{1},'hashtable')
				hash = varargin{1};
			elseif nargin == 0
				hash.keys = {};
				hash.data = {};
			elseif nargin == 2
				hash.keys = varargin{1};
				hash.data = varargin{2};
			else
				error('hashtable: Invalid input');
			end
		end % constructor
		
		% Clear hash table
		function hash = clear(hash)
			hash.keys = {};
			hash.data = {};
		end;
		
		% == elements == %
		% Get all hash table elements in a N-by-2 cell matrix where N is the number of
		% elements, first column contains the element keys, and second column contains
		% the element values.
		function data = elements(hash)
			data(:,1) = hash.keys;
			data(:,2) = hash.data;
		end;
		
		% Get data from the hash table
		% TF = strcmp(S,A) compares S to each element of array A, where S
		% is a character vector, a string scalar, or a cell array with one element,
		% and A is a string array or a cell array of character vectors. strcmp
		% returns TF, a logical array that is the same size as A and contains
		% logical 1 (true) for those elements of A that are a match, and logical 0
		% (false) for those elements that are not.
		% TF = strcmp(A,S) returns the same result.

		function data = get(hash,key)
			index = find(strcmp(hash.keys,key));
			if isempty(index)
				data = {};
			else
				data = hash.data{index};
			end
		end
		
		% Check to see if the hash is empty
		function bool = isempty(hash)
			bool = isempty(hash.keys);
		end
		
		%ISKEY Check to see if the hash is currently using a key
		function bool = iskey(hash,key)
			index = find(strcmp(hash.keys,key));
			bool = ~isempty(index);
		end
		
		% KEYS Get all the keys currently being used in the hash
		function k = getkeys(hash)
			k = hash.keys;
		end;
		
		% Put data in the hash table
		function hash = put(hash,key,data)
			index = find(strcmp(hash.keys,key));
			if isempty(index)
				if isempty(hash.keys)
					hash.keys{1} = key;
					hash.data{1} = data;
				else
					hash.keys{end+1} = key;
					hash.data{end+1} = data;
				end
			else
				hash.data{index} = data;
			end
		end
		
		% Remove element from the hash
		function hash = remove(hash,key)
			index = find(strcmp(hash.keys,key));
			if ~isempty(index)
				hash.keys = {hash.keys{1:index-1} hash.keys{index+1:end}};
				hash.data = {hash.data{1:index-1} hash.data{index+1:end}};
			end
		end
		
		% VALUES Get all data contained in the hash table
		function data = values(hash)
			data = hash.data;
		end
		
		% Display a hash table object
		function disp(hash)
			if(length(inputname(1)) ~= 0)
					disp(' ');
				fprintf('%s =\n', inputname(1));
			end			
			fprintf('HashTable\n');
			if isempty(hash)
				fprintf('\tEmpty\n\n' );
			else
				fprintf('Elements:\n');
				disp(elements(hash));
            end
        end
		
        function hash_union = hashtables_union(hash1, hash2)
            hash_union=hash1;
            keys2=hash2.keys; c=elements(hash2);
            for i=1:length(keys2)
                hash_union=put(hash_union,c{i},c{length(keys2)+i});
            end
        end
	end % methods
end % classdef







