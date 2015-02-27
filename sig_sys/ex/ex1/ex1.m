k = -10:20;

% Dirac \delta[k]
figure(1);
stem(k, (k==0));
title('Dirac \delta[k]');

% Sprungfolge \epsilon[k]
figure(2);
stem(k, (k >= 0));
title('Sprungfolge \epsilon[k]')

% Sprungfolge \epsilon[-k]
figure(3);
stem(k, ((-k) >= 0));
title('Sprungfolge \epsilon[-k]')

% Sprungfolge \epsilon[1-k]
figure(4);
stem(k, ((1-k) >= 0));
title('Sprungfolge \epsilon[1-k]')

% Signumfolge sgn[k]
figure(5);
stem(k, sign(k));
title('Signumfolge sgn[k]')

% Exponentialfolge e^{-k} \epsilon[k]
figure(6);
stem(k, exp(-k).*(k >= 0));
title('Exponentialfolge e^{-k} \epsilon[k]')

% Exponentialfolge e^{j \omega k} \epsilon[k]
omega = pi/4;
figure(7);
stem(k, exp(i * omega * k));
title('Exponentialfolge e^{j \omega k} \epsilon[k]')

% Autokorrelation
Sa = [1, -1, 1, 1];
figure(8);
subplot(2,1,1);
stem(Sa);
subplot(2,1,2);
stem(xcorr(Sa));

Sb = [1 1 1 -1 -1 1 -1];
figure(9);
subplot(2,1,1);
stem(Sb);
subplot(2,1,2);
stem(xcorr(Sb));

Sc = [1 1 1 -1 -1 -1 1 -1 -1 1 -1];
figure(10);
subplot(2,1,1);
stem(Sc);
subplot(2,1,2);
stem(xcorr(Sc));

Sd = [1 1 1 1 1 -1 -1 1 1 -1 1 -1 1];
figure(11);
subplot(2,1,1);
stem(Sd);
subplot(2,1,2);
stem(xcorr(Sd));

