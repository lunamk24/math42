% Regina George's lie case
% given parameters
beta = 0.03;
gamma = 0.1;
p = 0.2;
alpha = 0;

dt = 0.1;             
D = 7.; % Days
N_t = floor(D/dt);  

t = linspace(0, N_t*dt, N_t+1);
S = zeros(N_t+1, 1);
I = zeros(N_t+1, 1);
R = zeros(N_t+1, 1);

% Initial condition
S(1) = 1000;
I(1) = 1;
R(1) = 0;

% Step equations forward in time
for n = 1:N_t
   S(n+1) = S(n) - dt*beta*S(n)*I(n); 
   I(n+1) = I(n) + dt*p*beta*S(n)*I(n) - dt*gamma*I(n) + dt*alpha*R(n);
   R(n+1) = R(n) + dt*gamma*I(n) - dt*alpha*R(n) + dt*(1-p)*beta*S(n)*I(n);
end

plot(t, S, t, I, t, R, 'LineWidth',4);
title('The spread of Regina Georges lie');
legend('S', 'I', 'R');
xlabel('Days');
ylabel('Population');
print('tmp', '-dpdf');  print('tmp', '-dpng');

% --------------------------------------------------------------------------
  
% Dr. Neverheardofher's case
% given parameters
beta = 0.0001;
gamma = 0.00001;
p = 0.99;
alpha = 0.;

dt = 0.1;             
D = 365.; % Days
N_t = floor(D/dt);  

t = linspace(0, N_t*dt, N_t+1);
S = zeros(N_t+1, 1);
I = zeros(N_t+1, 1);
R = zeros(N_t+1, 1);

% Initial condition
S(1) = 1000;
I(1) = 1;
R(1) = 0;

% Step equations forward in time
for n = 1:N_t
   S(n+1) = S(n) - dt*beta*S(n)*I(n); 
   I(n+1) = I(n) + dt*p*beta*S(n)*I(n) - dt*gamma*I(n) + dt*alpha*R(n);
   R(n+1) = R(n) + dt*gamma*I(n) - dt*alpha*R(n) + dt*(1-p)*beta*S(n)*I(n);
end

plot(t, S, t, I, t, R, 'LineWidth',4);
title('The spread of Dr. Neverheardofhers lie');
legend('S', 'I', 'R');
xlabel('Days');
ylabel('Population');
print('tmp', '-dpdf');  print('tmp', '-dpng');

% --------------------------------------------------------------------------

% The Conwoman's lie case
% given parameters
beta = 0.003;
gamma = 0.001;
p = 0.7;
alpha = 0.009;

dt = 0.1;             
D = 31.; % Days
N_t = floor(D/dt);  

t = linspace(0, N_t*dt, N_t+1);
S = zeros(N_t+1, 1);
I = zeros(N_t+1, 1);
R = zeros(N_t+1, 1);

% Initial condition
S(1) = 1000;
I(1) = 1;
R(1) = 0;

% Step equations forward in time
for n = 1:N_t
   S(n+1) = S(n) - dt*beta*S(n)*I(n); 
   I(n+1) = I(n) + dt*p*beta*S(n)*I(n) - dt*gamma*I(n) + dt*alpha*R(n);
   R(n+1) = R(n) + dt*gamma*I(n) - dt*alpha*R(n) + dt*(1-p)*beta*S(n)*I(n);
end

plot(t, S, t, I, t, R, 'LineWidth',4);
title('The spread of the Conwomans lie');
legend('S', 'I', 'R');
xlabel('Days');
ylabel('Population');
print('tmp', '-dpdf');  print('tmp', '-dpng');
