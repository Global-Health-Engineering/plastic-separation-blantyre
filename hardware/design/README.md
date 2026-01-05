---
README for `./hardware/design`
---

This directory contains the design files for the developed prototype.
The parts were designed using the CAD software **NX 1988** from Siemens.

The higher level assembly of the design `A_full_process_line.prt` consists of the two prototype units designed in the course of this thesis - the air classifier and the sink-float separator - and the washing drum built by *Laios (2025)*.
The folder `S_separation` contains both assembly files and their subordinate part files (provided as PRT and STP files), as well as the technical drawings of the parts (provided as PRT and PDF files) of the two separation prototype units.
Additionally, the folder `vacuum_mellerware` in the `./hardware/design/S_separation` directory contains pictures in PNG format that represent the vacuum cleaner used in the assembly of the air classifier design.
The vacuum cleaner depicted in the figures is the <a href="http://www.mellerware.co.za/products/mellerware-vacuum-cleaner-bagless-cyclone-plastic-red-1.2l-1200w-innovac/31120A">Bagless Cyclone Vacuum Cleaner "Innovac"</a> by Mellerware.
The directory `./hardware/design/W_washing` contains a digital version of *Laois*' washing drum prototype for representation purposes. Its assembly is only available as  Siemens PRT file, while the individual parts are also available as STP files.

Apart from the CAD files, `HDPE_sheet_utilization.pdf` in `./hardware/design` offers the area utilization of the HDPE sheets used during production of the prototype. The initial HDPE sheets were manufactured by ArtMal in Blantyre, Malawi.

**Reference:**
*Laios, T. (2025). Plastic for Recycling Cleaning [Unpublished master thesis]. ETH Zurich.*

# Used naming and color coventions

**File naming convention**

Each designed prototype part file (and its corresponding drawing files) follow the same naming scheme: P_UU_T_NN_PARTNAME.FILEEXTENSION

| Placeholder | Description | Possible values |
| --- | --- | --- |
| P | Abbreviation of process | W (washing), S (separation) |
| UU | Abbreviation of prototype unit | AC (Air classifier), SF (Sink-float separator), WS (Washer drum) |
| T | Abbreviation of NX file type | A (Assembly), M (Model) |
| NN | Identification number of part (unique within a prototype unit) | Natural number incrementing in order of file creation |
| PARTNAME | Name of part/assembly | Any character allowed in file names |
| FILEEXTENSION | Extension of file type | prt (Siemens NX part file/drawing file), stp (step file), pdf (technical drawing exported as PDF) |

**Color codes used in Siemens NX 1988:**
| Material | Color | Translucency setting |
| --- | --- | --- |
| HDPE sheets | Ash Gray | 0% |
| Perforated steel sheets | Granite Gray | 50% |
| PVC pipe | Medium Khaki | 0% |
| Rubber seals | Dark Gray | 0% |
| Steel frame/sheets | Medium Steel | 0% |
| Tubes | Deep Stone | 0% |
| Wood | Medium Umber | 0% |
