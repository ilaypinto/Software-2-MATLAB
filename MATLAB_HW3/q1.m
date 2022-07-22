fid = fopen('topographicMap.txt');
map_data = textscan(fid, '%d\t%d\t%f\t%s');
fclose(fid);
map_matrix = zeros(32,32);
for i=1:32
    for j=1:32
        if (i==1)
            map_matrix(i,j)= map_data{3}(j);
        else
            map_matrix(i,j)= map_data{3}((i-1)*32+j);
        end
    end
end
treasures = zeros(3,2);
x=[];
for i=1:1024
    if (strcmp(map_data{4}(i),'Treasure')==1)
        x=[x,i];
    end
end
treasures(:,1) = map_data{1}(x);
treasures(:,2) = map_data{2}(x);
figure(1);
surf(map_matrix);
figure(2);
contour(map_matrix, 20);
hold on;
plot(treasures(:,2),treasures(:,1),'rx','MarkerSize',15,'LineWidth',4);

