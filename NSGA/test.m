options = nsgaopt();                    % create default options structure
options.popsize = 100;                   % populaion size
options.maxGen  = 500;                  % max generation

options.numObj = 2;                     % number of objectives
options.numVar = 30;                    % number of design variables
options.numCons = 0;                    % number of constraints
options.lb = zeros(1,30);               % lower bound of x
options.ub = ones(1,30);                % upper bound of x
options.vartype = 2*ones(1, options.numVar);
options.objfun = @testfun;              % objective function handle

options.plotInterval = 1;              % large interval for efficiency
options.outputInterval = 10;


result = nsga2(options);