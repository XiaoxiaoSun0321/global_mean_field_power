# Define GMFP/LMFP function
import numpy as np

def gmfp(eeg_data):
    """
    Calculate Global Mean Field Power (GMFP) based on given EEG data.

    Parameters:
        eeg_data (numpy.ndarray): Epoched EEG data input matrix structured as channels * times.
        For example, if eeg_data has size 64 * 1000, it has 64 channels/electrodes and 1000 time points.

    Returns:
        gmfp (numpy.ndarray): Global Mean Field Power calculated based on the given EEG data as a vector with the same time length as eeg_data.

    """

    v_sum = 0

    v_mean = np.mean(eeg_data, axis=0)

    num_elec = eeg_data.shape[0]

    for ix_elec in range(num_elec):
        v_sum = (eeg_data[ix_elec, :] - v_mean) ** 2 + v_sum

    gmfp = np.sqrt(v_sum / num_elec)

    return gmfp



def lmfp(eeg_data, channel_num):
    """
    Calculate Local Mean Field Power (LMFP) based on given EEG data.

    Parameters:
        eeg_data (numpy.ndarray): Epoched EEG data input matrix structured as channels * times.
                                 For example, if eeg_data has size 64 * 1000, it has 64 channels/electrodes and 1000 time points.
        channel_num (list): The electrode locations of the selected region with respect to the eeg_data.
                            For example, if you want to use electrode 1, 4, and 8, then channel_num = [0, 3, 7]
                            Note that the indices are zero-based in Python.

    Returns:
        lmfp (numpy.ndarray): Global Mean Field Power calculated based on the given EEG data.

    """

    if len(channel_num) == 0:
        raise ValueError("Input argument is missing. Please specify which electrodes to be included.")
    else:
        v_sum = 0

        loc_eeg_data = eeg_data[channel_num, :]

        v_mean = np.mean(loc_eeg_data, axis=0)

        num_elec = loc_eeg_data.shape[0]

        for ix_elec in range(num_elec):
            v_sum = (loc_eeg_data[ix_elec, :] - v_mean) ** 2 + v_sum

        lmfp = np.sqrt(v_sum / num_elec)

        return lmfp
