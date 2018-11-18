x = [0:2*pi/10:6*pi];
y = [0:2*pi/10:6*pi];
f = [0:pi/200:6*pi];

[X,Y]= ndgrid(x,y);

t = sqrt(X.^2+Y.^2);


for i=1:length(f)
   Z = sin(-f(i)+t);
   figure(i)=surf(x,y,Z);
    view(45,45);
    pause(1/60)
   % display(strcat("Generating Figure:",num2str(i)));
   %` saveas(figure(i),strcat("figure_",num2str(i),".jpg"));
  end
