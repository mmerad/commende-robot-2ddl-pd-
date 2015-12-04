function sortie = robot(entree)
q1 = entree(1);
q2 = entree(2);

qp1 = entree(3);
qp2 = entree(4);

tau1 = entree(5);
tau2 = entree(6);
tau = [tau1;tau2];
qp = [qp1;qp2];
p1 = 1.6;
p2 = 0.5;
p3 = 0.6;
p4 = 3.7;
p5 = 1.2;

M = [p1+p2+2*p3*cos(q2)  p2+p3*cos(q2); p2+p3*cos(q2) p2];
C = [-p3*qp2*sin(q2)  -p3*(qp1+qp2)*sin(q2); p3*qp1*sin(q2) 0];
G = [p4*cos(q1)+p5*cos(q1+q2); p5*cos(q1+q2)];

q2p = inv(M)*(tau - C * qp -G);
sortie = q2p;