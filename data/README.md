---
README for `./data`
---

The `./data` directory contains two sub-directories: `raw_data` and `derived_data`.

# `data/raw_data`

This directory contains unedited raw data. The data was obtained from tests conducted during the course of the master thesis.
The procedures with which the results were obtained are documented for each test in the testing documents in the`./hardware/testing` directory.

Files are stored in Microsoft excel worksheets (xlsx) files.

| Filename | Date of data collection | Geographic location of data collection |
| ------------ | ------------ | ------------ |
| `01_sink_float_sep-proof_of_concept-results.xlsx` | 2025-06-15 | ETH CLA, Tannenstrasse 3, 8092 Zurich, Switzerland |
| `02-hdp_sep-proof_of_concept-results.xlsx` | 2025-06-18 | ETH CLA, Tannenstrasse 3, 8092 Zurich, Switzerland |
| `03-ldp_sep-proof_of_concept-results.xlsx` | 2025-06-19 | ETH CLA, Tannenstrasse 3, 8092 Zurich, Switzerland |
| `04-light_sink_float_sep-proof_of_concept-results.xlsx` | 2025-07-04 - 2025-07-07 | ETH CLA, Tannenstrasse 3, 8092 Zurich, Switzerland |
| `07-sink_float_prototype_test-sample_1.xlsx` | 2025-09-24 (Sampling) | WASTE Advisers Innovation Hub, Chigumula, Malawi (15°53'08.5"S 35°03'49.5"E) |
| `07-sink_float_prototype_test-sample_2.xlsx` | 2025-09-24 (Sampling) | WASTE Advisers Innovation Hub, Chigumula, Malawi (15°53'08.5"S 35°03'49.5"E) |
| `07-sink_float_prototype_test-sample_3.xlsx` | 2025-09-24 (Sampling) | WASTE Advisers Innovation Hub, Chigumula, Malawi (15°53'08.5"S 35°03'49.5"E) |
| `07-sink_float_prototype_test-sample_4.xlsx` | 2025-09-24 (Sampling) | WASTE Advisers Innovation Hub, Chigumula, Malawi (15°53'08.5"S 35°03'49.5"E) |
| `07-sink_float_prototype_test-sample_4.xlsx` | 2025-09-24 (Sampling) | WASTE Advisers Innovation Hub, Chigumula, Malawi (15°53'08.5"S 35°03'49.5"E) |

For further information see the `README.md` file in the `./data/raw_data` directory.


# `data/derived_data`

This directory contains data that has been cleaned, processed, and formatted using the data in the `./data/raw_data` directory.
Files, where only trivial analysis steps were applied, are stored in xlsx format with the calculations implemented in the worksheet.
For the cases, where a (little) more comprehensive processing was needed, the files are stored in comma-separated values (CSV) files.

For further information see the `README.md` file in the `./data/derived_data` directory.


# File list

| directory | filename | description |
| ------------ | ------------ | ------------ |
| `./data/raw_data` | `01_sink_float_sep-proof_of_concept-results.xlsx` | Raw result data recorded during test 01 "Sink-float separation - Proof of concept" |
| `./data/raw_data` | `02-hdp_sep-proof_of_concept-results.xlsx` | Raw result data recorded during test 02 "HDP separation - Proof of concept" |
| `./data/raw_data` | `03-ldp_sep-proof_of_concept-results.xlsx` | Raw result data recorded during test 03 "LDP separation - Proof of concept" |
| `./data/raw_data` | `04-light_sink_float_sep-proof_of_concept-results.xlsx` | Raw result data recorded during test 04 "Light sink-float separation - Proof of concept" |
| `./data/raw_data` | `07-sink_float_prototype_test-sample_1.xlsx` | Raw result data of sample 1 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/raw_data` | `07-sink_float_prototype_test-sample_2.xlsx` | Raw result data of sample 2 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/raw_data` | `07-sink_float_prototype_test-sample_3.xlsx` | Raw result data of sample 3 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/raw_data` | `07-sink_float_prototype_test-sample_4.xlsx` | Raw result data of sample 4 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/raw_data` | `07-sink_float_prototype_test-sample_4.xlsx` | Raw result data of sample 5 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/raw_data` | `README.md` | Information regarding the files in the directory including a description of parameters used |
| `./data/derived_data` | `01_sink_float_sep-proof_of_concept-evaluations.xlsx` | Processed result data of test 01 "Sink-float separation - Proof of concept" |
| `./data/derived_data` | `02-hdp_sep-proof_of_concept-evaluations.xlsx` | Processed result data of test 02 "HDP separation - Proof of concept" |
| `./data/derived_data` | `03-ldp_sep-proof_of_concept-evaluations.xlsx` | Processed result data of test 03 "LDP separation - Proof of concept" |
| `./data/derived_data` | `04-light_sink_float_sep-proof_of_concept-evaluations.xlsx` | Processed result data of test 04 "Light sink-float separation - Proof of concept" |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_1-grain_size.csv` | Processed material composition results of sample 1 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_1-separation.csv` | Processed grain size composition results of sample 1 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_2-grain_size.csv` | Processed material composition results of sample 2 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_2-separation.csv` | Processed grain size composition results of sample 2 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_3-grain_size.csv` | Processed material composition results of sample 3 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_3-separation.csv` | Processed grain size composition results of sample 3 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_4-grain_size.csv` | Processed material composition results of sample 4 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_4-separation.csv` | Processed grain size composition results of sample 4 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_5-grain_size.csv` | Processed material composition results of sample 5 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `07-sink_float_prototype_test-sample_5-separation.csv` | Processed grain size composition results of sample 5 from the prototype tests analyzed by the flakeanalyser from RTT |
| `./data/derived_data` | `README.md` | Information regarding the files in the directory including a description of parameters used |
