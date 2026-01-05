---
README for `./data/derived_data`
---

This folder contains derived data obtained from the tests. The raw data is located in the directory `./data/raw_data`.

The first four evaluation files are obtained from small-scale proof-of-concept tests conducted in the lab:
- `01_sink_float_sep-proof_of_concept-evaluations.xlsx`
- `02-hdp_sep-proof_of_concept-evaluations.xlsx`
- `03-ldp_sep-proof_of_concept-evaluations.xlsx`
- `04-light_sink_float_sep-proof_of_concept-evaluations.xlsx`

As the calculations are trivial, they are directly performed in the excel sheet using the following formulas:
- purity_float = mass(float right) / mass(float total)
- purity_sink = mass(sink right) / mass(sink total)
- combined_purity = 0.5*(purity_float + purity_sink)

These evaluation sheets have an individual structure due to varying tested parameters. Thus, the specific data dictionary is presented in the "general_info" sheet of each file.


The five files `07-sink_float_prototype_test-sample_X-separation.csv` and the five files `07-sink_float_prototype_test-sample_X-grain_size.csv` (with X = 1...5) are generated using the `separation_result_derivation.R` script in the `./analysis` directory. For further information on the processing, see the `README.md` and the R script in the `./analysis` directory.
The results' structure is identical and the data dictionary for the two file classes are explained here:

**Data dictionary - 'separation' files:**
| Variable | Description | Unit |
| ------------ | ------------ | ------------ |
| material | Different material types of analysis | - |
| mass_percent | Mass fraction of that material in the sample | % |
| volume_percent | Volume fraction of that material in the sample | % |
| object_count | Absolute number of detected flakes for that material | - |

**Data dictionary - 'grain_size' files:**
| Variable | Description | Unit |
| ------------ | ------------ | ------------ |
| gain_size | Grain size ranges returned by flakeanalyser | mm |
| area_mm2 | Area fraction of that material in the sample | mm^2 |
| area_percent | Volume fraction of that material in the sample | % |


For more information see the `README.md` file in the `./data` directory.