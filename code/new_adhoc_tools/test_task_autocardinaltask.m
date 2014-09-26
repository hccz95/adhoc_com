clean
seed = 0;

%%
gridSize = 7;
noiseLevel = 0;

predators = {};
predators{end+1} = AutoCardinalTaskAgent(1);
predators{end+1} = AutoCardinalTaskAgent(2);
predators{end+1} = AutoCardinalTaskAgent(3);
predators{end+1} = AutoCardinalTaskAgent(4);

prey = EscapingPrey();

%%
init_random_seed(seed);
domain = create_domain(gridSize, noiseLevel, predators, prey);
domain.init()
%%

tic
cnt = 0;
while ~domain.is_prey_locked_at_locking_state()
    cnt = cnt + 1
    ordering = domain.generate_random_ordering_prey_last();
    domain.iterate(ordering)
    domain.draw()
    drawnow
%     pause
end
domain.draw()
toc


