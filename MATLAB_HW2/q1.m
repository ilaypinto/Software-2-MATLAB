grades = [78, 95, 73, 85, 72, 89, 93, 96, 81, 80];
grades1=min(grades.*110/100,100);
grades(grades>80)=min(5+grades(grades>80),100);