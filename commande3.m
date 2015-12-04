function sortie = commande3(entree)
t = entree(1);
q1 = entree(2);
q2 = entree(3);

qp1 = entree(4);
qp2 = entree(5);

qp = [qp1;qp2];
q = [q1;q2];
p1 = 1.6;
p2 = 0.5;
p3 = 0.6;
p4 = 3.7;
p5 = 1.2;

f = 10;
q1d = sin(2*pi*f*t);
q2d = q1d;

q1dp = 2*pi*f * cos(2*pi*f*t);
q2dp = q1dp;


qpd = [q1dp;q2dp];
qd = [q1d;q2d];
e = qd-q;
ep = qpd -qp;

M = [p1+p2+2*p3*cos(q2)  p2+p3*cos(q2); p2+p3*cos(q2) p2];
C = [-p3*qp2*sin(q2)  -p3*(qp1+qp2)*sin(q2); p3*qp1*sin(q2) 0];
G = [p4*cos(q1)+p5*cos(q1+q2); p5*cos(q1+q2)];

K1 = 10;
K2 = 5;

q1pd=-2*pi*f*2*pi*f*sin(2*pi*f*t);
V=q1pd+K1*e+K2*ep;
tau = M*V+C*qp+G;

sortie = [tau;qd;qpd];