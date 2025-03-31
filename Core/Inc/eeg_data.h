#ifndef EEG_DATA_H
#define EEG_DATA_H

#include <stdint.h>

#define NUM_ROWS 25   // Adjust based on your dataset
#define NUM_COLS 17   // Number of EEG features per sample

extern int eeg_data[NUM_ROWS][NUM_COLS];  // Declare the dataset

#endif /* EEG_DATA_H */
