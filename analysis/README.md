---
README for `./analysis`
---

This folder contains the R script `separation_result_derivation.R` to extract, clean, and format the test results acquired from RTT's flakeanalyser.
It reads the excel sheet obtained from the flakeanalyser for each measured sample `07-sink_float_prototype_test-sample_X.xlsx` (with X = 1...5) in the directory `./analysis/data/raw_data`. After the processing, each result (two files per sample) is saved to `./analysis/data/derived_data` named `07-sink_float_prototype_test-sample_X-separation.csv` and `07-sink_float_prototype_test-sample_X-grain_size.csv` as CSV files.


| Input | Directory |
| ------------ | ------------ |
| `07-sink_float_prototype_test-sample_1.xlsx` | `./analysis/data/raw_data` |
| `07-sink_float_prototype_test-sample_2.xlsx` | `./analysis/data/raw_data` |
| `07-sink_float_prototype_test-sample_3.xlsx` | `./analysis/data/raw_data` |
| `07-sink_float_prototype_test-sample_4.xlsx` | `./analysis/data/raw_data` |
| `07-sink_float_prototype_test-sample_5.xlsx` | `./analysis/data/raw_data` |

| Output | Directory |
| ------------ | ------------ |
| `07-sink_float_prototype_test-sample_1-separation.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_1-grain_size.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_2-separation.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_2-grain_size.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_3-separation.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_3-grain_size.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_4-separation.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_4-grain_size.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_5-separation.csv` | `./analysis/data/derived_data` |
| `07-sink_float_prototype_test-sample_5-grain_size.csv` | `./analysis/data/derived_data` |
