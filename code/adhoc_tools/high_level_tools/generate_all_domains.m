function allDomainStructs = generate_all_domains(gridSize, noiseLevel, allPredators, preys, allLockingStates)
%GENERATE_ALL_DOMAINS

allDomainStructs = combine_parameters(...
    'gridSize', gridSize, ...
    'noiseLevel', noiseLevel, ...
    'predators', allPredators, ...
    'prey', preys, ...
    'lockingState', allLockingStates);