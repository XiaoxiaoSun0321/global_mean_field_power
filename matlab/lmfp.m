function lmfp = lmfp(eeg_data,channel_num)
%global mean field power (GMFP) were used to characterize cortical excitability
%%%%%%%%%%%%%%%%%%%%%%INPUT%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   eeg_data: epoched eeg data input matrix structured as channels*times
%   e.g., eeg_data has size 64*1000 means it has 64 channels/electrodes and 1000 time points 
%   channel_num: the electrode location of the selected region respect to the eeg_data
%   e.g., if we want to use electrode 1,4,8, then channel_num = [1,4,8]
%%%%%%%%%%%%%%%%%%%%%OUTPUT%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   lmfp: global mean field power calculated based on given eeg data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin < 2
        error('Input argument is missing. Please specify which electrodes to be included.');
else
    v_sum = 0;

    loc_eeg_data = eeg_data(channel_num,:);

    v_mean = mean(loc_eeg_data,1);
    
    num_elec = size(loc_eeg_data,1);
    
    for ix_elec = 1:num_elec
        v_sum = (loc_eeg_data(ix_elec,:)-v_mean).^2+v_sum;
    end
    
    lmfp = sqrt(v_sum/num_elec);
end



end

