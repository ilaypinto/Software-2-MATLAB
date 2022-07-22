load('students_hashtable.mat');
students=students_hashtable.keys;
c=elements(students_hashtable);
biogrades=[];
histogrades=[];
for i=1:length(students)
    if students{i}(1)=='5'
        biogrades=[biogrades,c{length(students)+i}.biology];
    elseif students{i}(1)=='6'
        histogrades=[histogrades,c{length(students)+i}.history];
    end
end
mean_biology_5=mean(biogrades);
mean_history_6=mean(histogrades);