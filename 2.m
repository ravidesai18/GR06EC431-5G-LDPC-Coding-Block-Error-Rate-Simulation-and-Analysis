delete(gcp('nocreate'));  % If a parpool exists, shut it down first
pool = parpool('local');  % Create a local parpool for helperLDPCBLERSim
targetNumBlockErrors = 100;
numBlocksInsideParfor = 1000; % Number of blocks to simulate per worker in one parfor loop
maxNumBlocksPerWorker = 1e9;
[BLER, snrdB, finalNumBlockErrors, finalNumBlocks, executionTime] = ...
    helperLDPCBLERSim(TBS, codeRate, EbNo, targetNumBlockErrors, ...
        maxNumBlocksPerWorker, numBlocksInsideParfor)
delete(pool);