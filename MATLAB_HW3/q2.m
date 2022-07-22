load('students.mat');
A1 = sum(students(3).french);
A2 = (sum(students(1).biology)+sum(students(2).biology)+sum(students(3).biology)+sum(students(4).biology))/4;
A3=[];
for i=1:4
    A3=[A3,students(i).science(2)];
end