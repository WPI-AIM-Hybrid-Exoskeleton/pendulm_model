% system dynamics

% Assumpotions 
% both pends have the same segmental lenths 
% l1h == l1e => l1, l2h == l2e => l2
% mass do not have to be idential  m1h != m2h != m12 != m2e
% exo masses are larger then the human masses


% human parameters

mh = [2, 1]; 

me = [ 1, 1] + mh;

% other model params
l = [ 1.0, 1.5]

myQ = diag([.1 .5 0.001 .001]);
myR = diag([0.001 0.001 0.00 0.00]);


% connection dyamics
spring = [100, 0; 0, 100];
dampener = [100, 0; 0, 100];


% model 1 gains
Km1 = [30, 0; 0 30];
Dm1 = [30,0;0,30];



% Addmittance Controller
Kd = [ 50,0;0, 50];
Bd = [50,0;0, 50];
Md = [20.0, 0; 0, 20.0];

%Exo Gains


% SMClambda2 = [1., 0; 0 5.0];




lambda2 = [ 1.0, 0; 0 1.0];
rho2 = [200, 0; 0, 200];
exo_sat = 60;

human_sat = 30;

Kem = [ 50, 0; 0, 50];
Ked = [ 50, 0; 0, 50];


Kp0 = 50*eye(2);
Kn0 = 50*eye(2);
Bp0 = 50;
Bn0 = 50;
beta_p = 3;
beta_n = 3;
alpha_p = 3;
alpha_n = 3;
