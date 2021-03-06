p = [22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
r = [17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1 = length(p);
n2 = length(r);
alpha = 0.05;
xm1 = mean(p);
xm2 = mean(r);
m = xm1-xm2;
v1 = var(p);
v2 = var(r);
sp = sqrt(((n1-1)*v1+(n2-1)*v2)/(n1+n2-2));
t = tinv(1-alpha/2,n1+n2-2);
m1 = m-t*sp*sqrt(1/n1+1/n2);
m2 = m+t*sp*sqrt(1/n1+1/n2);
fprintf('Confidence interval for the difference of the means with equal standard deviations: %f %f\n',m1,m2);

clear all;
p = [22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
r = [17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1 = length(p);
n2 = length(r);
alpha = 0.05;
xm1 = mean(p);
xm2 = mean(r);
v1 = var(p);
v2 = var(r);
c = (v1/n1) / (v1/n1 + v2/n2);
n = 1/(c^2/(n1-1) + (1-c)^2/(n2-1));
t1 = tinv(1 - alpha/2, n);
t2 = tinv(alpha/2, n); % t2 = -t1
ci1 = xm1 - xm2 - t1 * sqrt(v1/n1 + v2/n2);
ci2 = xm1 - xm2 - t2 * sqrt(v1/n1 + v2/n2);
fprintf('Confidence interval for the difference of the means with different standard deviations: %f %f\n', ci1, ci2);

clear all;
p = [22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
r = [17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1 = length(p);
n2 = length(r);
alpha = 0.05;
xm1 = mean(p);
xm2 = mean(r);
m = xm1-xm2;
v1 = var(p);
v2 = var(r);
f1 = finv(1 - alpha/2, n1-1, n2-1);
f2 = finv(alpha/2, n1-1, n2-1);
ci1 = 1/f1 * v1/v2;
ci2 = 1/f2 * v1/v2;
fprintf('Confidence interval for the ratio of the variances: %f %f\n', ci1, ci2);