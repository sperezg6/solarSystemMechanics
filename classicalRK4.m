function [y,t] = classicalRK4(f,y0,t0,tf,h)
    t = t0:h:tf;
    n = length(t);
    y = zeros(length(y0),n);
    y(:,1) = y0;
  
    
    for i = 1:1:n-1
    k1 = f(t(i),y(:,i));
    k2 = f(t(i)+0.5*h, y(:,i)+0.5*k1*h);
    k3 = f(t(i)+0.5*h, y(:,i)+0.5*k2*h);    
    k4 = f(t(i)+h, y(:,i)+k3*h); 
    phi = (1/6)*(k1 +2*k2 +2*k3+k4);
    y(:,i+1) = y(:,i) + phi*h;

    end



end