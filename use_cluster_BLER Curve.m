[pool, cluster] = helperCreateParpool("Cluster");
EbNo = -0.5:0.25:2.25;
if ~isempty(cluster)
    disp('Found MATLAB Parallel Server cluster on your local network')
    [BLER, snrdB, finalNumBlockErrors, finalNumBlocks, executionTime] = ...
        helperLDPCBLERSim(TBS, codeRate, EbNo, targetNumBlockErrors*ones(size(EbNo)), ...
            maxNumBlocksPerWorker*ones(size(EbNo)), numBlocksInsideParfor*ones(size(EbNo)));
    figure
    semilogy(snrdB,BLER,'x-')
    xlabel('SNR (dB)');
    ylabel('BLER')
    grid on
    delete(pool);
end
