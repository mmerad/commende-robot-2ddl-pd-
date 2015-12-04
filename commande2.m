function sortie = commande2(entree)
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

g = [p4*cos(q1)+p5*cos(q1+q2); p5*cos(q1+q2)];
K1 = 4000;
K2 = 2000;
tau = K1*e+K2*ep+g;

sortie = [tau;qd;qpd];