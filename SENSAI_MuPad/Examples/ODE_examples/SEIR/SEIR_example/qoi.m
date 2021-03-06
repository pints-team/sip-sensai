function [q,dqdx,dqdp] = qoi(t,x,p,xdim,kdim,qdim) 

q=zeros(qdim,1);
dqdx=zeros(qdim,xdim);
dqdp=zeros(qdim,kdim+xdim); 

  q1 = x(1)+x(2)+x(3)+x(4);
  q2 = x(2)/p(1);
  q3 = x(3)/p(1);

q(1) = q1;
q(2) = q2;
q(3) = q3;

  dq1dx1 = 1.0;
  dq1dx2 = 1.0;
  dq1dx3 = 1.0;
  dq1dx4 = 1.0;
  dq2dx1 = 0.0;
  dq2dx2 = 1.0/p(1);
  dq2dx3 = 0.0;
  dq2dx4 = 0.0;
  dq3dx1 = 0.0;
  dq3dx2 = 0.0;
  dq3dx3 = 1.0/p(1);
  dq3dx4 = 0.0;

dqdx(1,1) = dq1dx1;
dqdx(1,2) = dq1dx2;
dqdx(1,3) = dq1dx3;
dqdx(1,4) = dq1dx4;
dqdx(2,1) = dq2dx1;
dqdx(2,2) = dq2dx2;
dqdx(2,3) = dq2dx3;
dqdx(2,4) = dq2dx4;
dqdx(3,1) = dq3dx1;
dqdx(3,2) = dq3dx2;
dqdx(3,3) = dq3dx3;
dqdx(3,4) = dq3dx4;

  dq1dp1 = 0.0;
  dq1dp2 = 0.0;
  dq1dp3 = 0.0;
  dq1dp4 = 0.0;
  dq1dp5 = 0.0;
  dq1dp6 = 0.0;
  dq1dp7 = 0.0;
  dq1dp8 = 0.0;
  dq2dp1 = -1.0/p(1)^2*x(2);
  dq2dp2 = 0.0;
  dq2dp3 = 0.0;
  dq2dp4 = 0.0;
  dq2dp5 = 0.0;
  dq2dp6 = 0.0;
  dq2dp7 = 0.0;
  dq2dp8 = 0.0;
  dq3dp1 = -1.0/p(1)^2*x(3);
  dq3dp2 = 0.0;
  dq3dp3 = 0.0;
  dq3dp4 = 0.0;
  dq3dp5 = 0.0;
  dq3dp6 = 0.0;
  dq3dp7 = 0.0;
  dq3dp8 = 0.0;

dqdp(1,1) = dq1dp1;
dqdp(1,2) = dq1dp2;
dqdp(1,3) = dq1dp3;
dqdp(1,4) = dq1dp4;
dqdp(1,5) = dq1dp5;
dqdp(1,6) = dq1dp6;
dqdp(1,7) = dq1dp7;
dqdp(1,8) = dq1dp8;
dqdp(2,1) = dq2dp1;
dqdp(2,2) = dq2dp2;
dqdp(2,3) = dq2dp3;
dqdp(2,4) = dq2dp4;
dqdp(2,5) = dq2dp5;
dqdp(2,6) = dq2dp6;
dqdp(2,7) = dq2dp7;
dqdp(2,8) = dq2dp8;
dqdp(3,1) = dq3dp1;
dqdp(3,2) = dq3dp2;
dqdp(3,3) = dq3dp3;
dqdp(3,4) = dq3dp4;
dqdp(3,5) = dq3dp5;
dqdp(3,6) = dq3dp6;
dqdp(3,7) = dq3dp7;
dqdp(3,8) = dq3dp8;

end