td = 20*(sqrt(1*10^-3*10*10^-9))
fg = 1/(pi*sqrt(1E-3*10E-9))
z0 = sqrt((1E-3)/(10E-9))
rq = 50
r1 = sqrt(z0*(z0-rq))
r2 = rq*z0/r1
a  = sqrt(z0/rq) + sqrt((z0/rq)-1)

d  = 2.02/1.42
dlog = 20*log10(d)

voltage_z0 = [
2.08,
2.02,
1.94,
1.86,
1.84,
1.81,
1.78,
1.71,
1.67,
1.58,
1.52,
1.45,
1.45,
1.45,
1.45,
1.41,
1.33,
1.23,
1.15,
1.12,
1.10]

voltage_open = [
1.96,
1.52,
1.45,
1.77,
2.12,
2.31,
2.22,
1.86,
1.32,
0.86,
1.11,
1.67,
2.02,
2.15,
1.96,
1.47,
0.75,
0.42,
1.14,
1.72,
2.02]

voltage_short = [
2.54,
2.61,
2.43,
2.02,
1.50,
1.21,
1.53,
1.98,
2.30,
2.29,
1.99,
1.42,
0.75,
0.83,
1.52,
2.01,
2.21,
2.10,
1.66,
0.95,
0.08]

voltage_complex = [
2.27,
2.14,
1.93,
1.76,
1.64,
1.70,
1.80,
1.94,
1.88,
1.72,
1.45,
1.22,
1.21,
1.41,
1.61,
1.70,
1.60,
1.33,
0.98,
0.78,
0.94]

node = [1:1:21];

graphics_toolkit("gnuplot");
figure(1);

subplot(2,2,1);
plot(node, voltage_z0);
title('R_L = Z_0');
axis([0,21,0,2.7]);
grid on;

subplot(2,2,2);
plot(node, voltage_open);
title('R_L = \infty');
axis([0,21,0,2.7]);
grid on;

subplot(2,2,3);
plot(node, voltage_short);
title('R_L = 0');
axis([0,21,0,2.7]);
grid on;

subplot(2,2,4);
plot(node, voltage_complex);
title('R_L komplex');
axis([0,21,0,2.7]);
grid on;

print '-dpdf' 'voltage.pdf';
