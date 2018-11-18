x = [0:2*pi/10:10*pi];
y = [0:2*pi/10:10*pi];
f = [0:pi/200:6*pi];

[X,Y]= ndgrid(x,y);

t = sqrt(X.^2+Y.^2);
figure();
pause();
for i=1:length(f)
   Z = sin(-f(i).*t);
   figure(i)=surf(x,y,Z);
    view(45,45);
    pause(1/20)
   % display(strcat("Generating Figure:",num2str(i)));
   % saveas(figure(i),strcat("figure_",num2str(i),".jpg"));
  end
