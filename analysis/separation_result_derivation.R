# Setup -------------------------------------------------------------------

library(tidyverse)
library(readxl)
library(gt)



# Select sample -----------------------------------------------------------
# Here, the for-loop is started to loop through all five samples tested with the
# flakeanalyser from RTT. Alternatively, a single sample can be selected.

for (x in 1:5) {
  sample_nr = x



# Read raw data -----------------------------------------------------------
# Reads the results of the scan done with the flakeanalyser by RTT, extracts the
# useful data and renames the columns for clarity.

dataset_name <- sprintf("data/raw_data/07-sink_float_prototype_test-sample_%i.xlsx",sample_nr)

sample_raw <- read_xlsx(here::here(dataset_name),
                        sheet = "Zusammenfassung")


results_separation        <- sample_raw[1:25, 1:9]
results_grain_size <- sample_raw[1:9, 12:14]


col_names <- c("material", "object_count", "object_count_percent",
               "area_mm2", "area_percent", "volume_mm3", "volume_percent",
               "mass_g", "mass_percent")
results_separation <- results_separation |> rename_all(~ col_names)

col_names <- c("grain_size", "area_mm2", "area_percent")
results_grain_size <- results_grain_size |> rename_all(~ col_names)

rm(sample_raw, col_names, dataset_name)



# Clean data --------------------------------------------------------------
# Since the distinction between different colors of PE and PP is not significant,
# the individual measurements are summed up. Additionally, ABS, PA, PC, and
# Other Plastics are grouped into Other Plastics due to the low number of
# detected flakes.
# The result is ordered to suit the topic of the thesis.
# Lastly the column mass_g is remove since this value is not measured but
# calculated by the flakeanalyser based on a total weight of the sample. This
# value is not measured internally but entered by the user prior to the scan.
# An arbitrary value (123 g) was used here. Thus, the results are not
# significant.

results_sep_sum <-results_separation |> 
  mutate(material_group = case_when(
    startsWith(material, "PE-") ~ "PE",
    startsWith(material, "PP-") ~ "PP",
    material %in% c("ABS", "PA", "PC", "Other Plastics") ~ "Other Plastics",
    TRUE ~ material
  )) |> 
  group_by(material_group) |> 
  summarise(across(
    where(is.numeric), 
    sum
  ), .groups = "drop")

desired_order <- c("PP", "PE", "PET", "PS", "PVC",
                   "Other Plastics", "Metal", "Cell", "NI", "Black")

results_sep_sum <- results_sep_sum |> 
  arrange(match(material_group, desired_order))

results_sep_sum <- results_sep_sum |> 
  select(-mass_g)



# Derived data ------------------------------------------------------------
# Here, the most important values (mass_percent, volume_percent, and object_count)
# of the separation analysis are selected and rearranged.
# material_group is renamed to material again.
#
# For the grain size table, all rows for grain sizes larger than 10 mm are
# removed since no flakes are recorded for these sizes. This is a result if the
# internal measurement process of the flakeanalyser which is set to
# computationally "cut" all flakes that are recorded with an area above 10 mm
# and, thus, considers them two or more flakes of smaller size.

deriv_sep_purities <- results_sep_sum |> 
  select(material_group, mass_percent, volume_percent, object_count) |> 
  rename('material' = material_group)

deriv_grain_size <- results_grain_size[1:5, 1:3]



# Save derived data -------------------------------------------------------
# The separation results are saved as a csv file. Optionally, it can also be
# exported as a formatted LaTeX file or a Word table.
# The same is done for the grain size results.

# csv separation results
write_csv(deriv_sep_purities,
          here::here(sprintf("data/derived_data/07-sink_float_prototype_test-sample_%i-separation.csv",
                             sample_nr)))

# LaTeX separation results
#deriv_sep_purities |> 
#  gt() |> 
#  tab_header(title = "Separation purities",
#             subtitle = sprintf("Sample %i", sample_nr)) |>
#  fmt_number(columns = mass_percent:volume_percent, decimals = 2) |> 
#  fmt_number(columns = object_count, decimals = 0) |>
#  cols_label(material = "Material",
#             mass_percent = "Mass [%]",
#             volume_percent = "Volume [%]",
#             object_count = "Object count []") |> 
#  gtsave(filename = sprintf("07-sink_float_prototype_test-sample_%i-separation.tex",
#                            sample_nr),
#         path = here::here("data/derived_data") )

# Word separation results
# deriv_sep_purities |> 
#   gt() |> 
#   tab_header(title = "Separation purities",
#              subtitle = sprintf("Sample %i", sample_nr)) |>
#   fmt_number(columns = mass_percent:volume_percent, decimals = 2) |> 
#   fmt_number(columns = object_count, decimals = 0) |>
#   cols_label(material = "Material",
#              mass_percent = "Mass [%]",
#              volume_percent = "Volume [%]",
#              object_count = "Object count []") |> 
#   gtsave(filename = sprintf("07-sink_float_prototype_test-sample_%i-separation.docx",
#                             sample_nr),
#          path = here::here("data/derived_data") )


# csv grain size results
write_csv(deriv_grain_size,
          here::here(sprintf("data/derived_data/07-sink_float_prototype_test-sample_%i-grain_size.csv",
                             sample_nr)))

# # LaTeX grain size results
# deriv_grain_size |> 
#   gt() |> 
#   tab_header(title = "Grain size distribution",
#              subtitle = sprintf("Sample %i", sample_nr)) |>
#   fmt_number(columns = area_mm2:area_percent, decimals = 2) |>
#   cols_label(grain_size = "Grain size",
#              area_mm2 = html("Area [mm<sup>2</sup>]"),
#              area_percent = "Area [%]") |> 
#   gtsave(filename = sprintf("07-sink_float_prototype_test-sample_%i-grain_size.tex",
#                             sample_nr),
#          path = here::here("data/derived_data") )

# # Word grain size results
# deriv_grain_size |> 
#   gt() |> 
#   tab_header(title = "Grain size distribution",
#              subtitle = sprintf("Sample %i", sample_nr)) |>
#   fmt_number(columns = area_mm2:area_percent, decimals = 2) |>
#   cols_label(grain_size = "Grain size",
#              area_mm2 = html("Area [mm<sup>2</sup>]"),
#              area_percent = "Area [%]") |> 
#   gtsave(filename = sprintf("07-sink_float_prototype_test-sample_%i-grain_size.docx",
#                             sample_nr),
#          path = here::here("data/derived_data") )



# End for-loop ------------------------------------------------------------

}