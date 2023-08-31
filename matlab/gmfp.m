function gmfp = gmfp(eeg_data)
%global mean field power (GMFP) were used to characterize cortical excitability
%%%%%%%%%%%%%%%%%%%%%%INPUT%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   eeg_data: epoched eeg data input matrix structured as channels*times
%   e.g., eeg_data has size 64*1000 means it has 64 channels/electrodes and 1000 time points 
%%%%%%%%%%%%%%%%%%%%%OUTPUT%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   gmfp: global mean field power calculated based on given eeg data as a
%   vector with the same time length as eeg_data.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v_sum = 0;

v_mean = mean(eeg_data,1);

num_elec = size(eeg_data,1);

for ix_elec = 1:num_elec
    v_sum = (eeg_data(ix_elec,:)-v_mean).^2+v_sum;
end

gmfp = sqrt(v_sum/num_elec);

end

