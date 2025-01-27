function domain = create_domain_from_struct(domainStruct)
%CREATE_DOMAIN_FROM_STRUCT 

domain = create_domain(...
    domainStruct.gridSize, ...
    domainStruct.noiseLevel, ...
    domainStruct.predators, ...
    domainStruct.prey);

domain.lockingState = domainStruct.lockingState;