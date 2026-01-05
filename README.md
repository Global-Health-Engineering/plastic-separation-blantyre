<!-- badges: start -->
[![](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17953337.svg)](https://doi.org/10.5281/zenodo.17953337)
<!-- badges: end -->

<h1> Plastic Separator - Design and Results </h1>

<b>Contributors</b>  
- Sven Prinz <a href="https://orcid.org/0009-0000-4485-1235">
<img alt="ORCID logo" src="https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png" width="16" height="16" /> 0009-0000-4485-1235
</a>, <a href="sprinz@ethz.ch">sprinz@ethz.ch</a> *author, maintainer*  
- Jakub Tkaczuk <a href="https://orcid.org/0000-0001-7997-9423">
<img alt="ORCID logo" src="https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png" width="16" height="16" /> 0000-0001-7997-9423
</a> *supervisor*  
- Elizabeth Tilley <a href="https://orcid.org/0000-0002-2095-9724">
<img alt="ORCID logo" src="https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png" width="16" height="16" /> 0000-0002-2095-9724
</a> *supervisor*  

<br>
<p align="middle"> 
<img src="img/ETH_GHE_logo.svg" width=600>
<br><br>
It compliments the openly-accessible master’s thesis, available on the<br \>  
<a href="">ETH Research Collection</a>.
</p>

<b>Date of Thesis</b>  
- 2025-05-28 until 2025-12-19

<b>Locations</b>  
- Zurich, Switzerland
- Blantyre, Malawi

# Thesis Abstract

The growing thread of plastic waste is visible all over the world. Production and consumption increase each year, while the rate of recycling lags behind significantly, heightening the burden on health and the environment.
Efforts are being made to counteract this development, with mixed outcomes.
In collaboration with *ArtMal* and *WASTE Advisers*, two NGOs active in Blantyre, Malawi, it is aimed to return discarded plastic waste to the recycling process.
After failed attempts to reuse the plastic in form of molded bricks due to property differences between various types, a large quantity of mixed plastic flakes remains.
The goal of this thesis is to divide the mixed flakes by their type and, thus, reintroduce them into the ongoing recycling efforts in Malawi.

The thesis is structured in two parts.
During the first period, a literature review including small scale testing was conducted to evaluate the feasibility of various plastic separation methods.
The following field work in Malawi consisted of the plastic waste assessment, the design and manufacturing of a suitable separation prototype, and the validation of its functionality.

It was found that the most promising method for the setting in Blantyre is the sink-float method due to its simplicity and robustness.
The resulting prototype is a manually operated two-stage sink-float separator which addresses the sorting of PP, HDPE, and PET.
Due to its fabrication out of locally available material, a cost-efficient and reproducible design was obtained.
With this prototype, separation purities of 96.55 % for PET and 99.77 % for HDPE were achieved, allowing their reuse in recycling operations by *ArtMal* and *WASTE Advisers*. The purity of PP remained insufficient at 69.76 %.

However, the resulting recyclates are not of satisfying quality for all uses due to a mix of colors as well as a small amounts of PVC and other contaminants remaining in the product.
Especially for contaminated flakes, a supplementary washing solution is necessary.
Additionally, one aspect that this prototype has in common with other separation methods is the need for affordable (in-line) quality verification of the recyclate.
By addressing these complementary systems such as the washing, contaminant removal, and quality control in future work, the prototype's deployment beyond the flakes stored by *WASTE Advisers* becomes viable.

# Repository Overview

To supplement the thesis and allow reproduction of the prototype design and results, all developed resources are published in this repository.
The repository has the following directory tree:

    .
    ├── analysis
    ├── data
    │   ├── derived_data
    │   └── raw_data
    ├── hardware
    │   ├── design
    |   |   ├── S_separation
    |   |   |   └── vacuum_mellerware
    |   |   └── W_washing
    │   └── testing
    ├── img
    └── media
        ├── design
        ├── manufacturing
        └── testing
            ├── 01-sink_float_sep-proof_of_concept
            ├── 02-hdp_sep-proof_of_concept
            ├── 03-ldp_sep-proof_of_concept
            ├── 04-light_sink_float_sep-proof_of_concept
            ├── 05-water_quality_test
            ├── 06-plastic_waste_analysis
            └── 07-sink_float_prototype_test
Each main directory (except for the `./img` directory) contains its own `README.md` file describing the content in more detail.

| Main directory | Content |
|---|---|
| `./analysis` | Code for data analysis |
| `./data` | Data generated during the project |
| `./hardware` | Prototype design, and testing documentation |
| `./img` | Images used in this `README.md` file |
| `./media` | Photos and videos concerning the project |

# License

The complete design and available materials are licensed under [Creative Commons Attribution 4.0 International](https://github.com/Global-Health-Engineering/plastic-separation-blantyre/blob/main/LICENSE.md).

