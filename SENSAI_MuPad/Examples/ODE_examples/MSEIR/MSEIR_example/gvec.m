function [g] = gvec(t,x,p) 

  g1 = p(1)*(x(2)+x(3)+x(4)+x(5))-x(1)*(p(2)+p(3));
  g2 = p(2)*x(1)+p(9)*x(5)-x(2)*(p(5)+p(10))-p(4)*x(2)*x(4);
  g3 = p(4)*x(2)*x(4)-(1.0/p(6)+p(5))*x(3);
  g4 = x(3)/p(6)-x(4)*(1.0/p(8)+p(5)+p(7));
  g5 = p(10)*x(2)+1.0/p(8)-x(5)*(p(5)+p(9));

g(1) = g1;
g(2) = g2;
g(3) = g3;
g(4) = g4;
g(5) = g5;

end