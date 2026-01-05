---
README for `./data/raw_data`
---

This folder contains raw data obtained from the tests.

The first four result files are obtained from small-scale proof-of-concept tests conducted in the lab:
- `01_sink_float_sep-proof_of_concept-results.xlsx`
- `02-hdp_sep-proof_of_concept-results.xlsx`
- `03-ldp_sep-proof_of_concept-results.xlsx`
- `04-light_sink_float_sep-proof_of_concept-results.xlsx`

They have an individual structure due to varying tested parameters. Thus, the specific data dictionary is presented in the "general_info" sheet of each file.


The five files `07-sink_float_prototype_test-sample_X.xlsx` (with X = 1...5) are the results of the flakeanalyser from RTT which was used to determine the composition of the prototype samples. Their structure is identical and the most important parameters on the first sheet are explained here:

| Column name | Description |
| ------------ | ------------ |
| Material | Material which the flakeanalyser can distinguish |
| Objektanzahl | Absolute number of detected flakes for that material |
| Anzahl Objekte [%] | Relative number of detected flakes for that material |
| Fläche [mm²] | Absolute area measured for that material |
| Fläche [%] | Area fraction of that material in the sample |
| Volumen [mm³] | Absolute volume measured for that material |
| Volumenverteilung [%] | Volume fraction of that material in the sample |
| Gewicht [g] | Derived mass of that material based on measured volume and a total mass of the sample * |
| Gewichtsverteilung [%] | Mass fraction of that material in the sample |

\* The total mass of the sample can not be measured by the machine. Instead, an arbitrary value (123 g) was entered prior to the analysis.

For more information see the `README.md` file in the `./data` directory.