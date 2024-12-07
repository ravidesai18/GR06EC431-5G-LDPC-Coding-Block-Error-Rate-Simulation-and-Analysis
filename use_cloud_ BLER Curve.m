[pool, cluster] = helperCreateParpool("Cloud");
if ~isempty(cluster)
    disp('Found MATLAB Parallel Server cluster on the cloud')
    if strcmpi(cluster.State,'online')
        [BLER, snrdB, finalNumBlockErrors, finalNumBlocks, executionTime] = ...
            helperLDPCBLERSim(TBS, codeRate, EbNo, targetNumBlockErrors*ones(size(EbNo)), ...
                maxNumBlocksPerWorker*ones(size(EbNo)), numBlocksInsideParfor*ones(size(EbNo)));
        figure
        semilogy(snrdB,BLER,'x-')
        xlabel('SNR (dB)');
        ylabel('BLER')
        grid on
        delete(pool);
        disp("If you do not need to use the cluster, go to https://cloudcenter.mathworks.com and shut it down.")
    else
        disp("The cluster " + cluster.Name + " is not online. Go to https://cloudcenter.mathworks.com, start it, and then run this example again.")
    end
end
