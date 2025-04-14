---
title: "GallupDataPreparation"
author: "{{AUTHOR}}"
date: '{{TODAY_DATE}}'
---

## 0. Subset the Gallup raw data

The version of the Gallup raw data used in this study is "{{RAW_FILENAME}}". This data was released to the [UofT Map and Data Library](https://mdl.library.utoronto.ca/collections/numeric-data/gallup) on {{RAW_RELEASE_DATE}}.

## Required Folder Structure

When using this script, you will need the following folder structure in your directory:

```
{{PROJECT_NAME}}/
  ├── data/
  │   ├── processed/       # Will contain the output of data processing
  │   └── raw/             # Contains the raw Gallup data files
  │       └── {{RAW_FILENAME}}
  └── scripts/
      ├── {{SCRIPT_NAME}}  # This script
```

```{r eval=FALSE}
# The code in this chunk will not be run in the current Rmd
# load "dplyr"
library(dplyr)

# Import the data file from the raw data directory
raw_data_path <- file.path("{{RAW_DATA_DIR}}", "{{RAW_FILENAME}}")
gallupRaw <- rio::import(raw_data_path)

# Create a character vector of the names of the variables we're interested in
varRequired <- c(
  {{VARIABLES_LIST}}
)

# Subset gallupRaw to include only the variables specified in varRequired
gallupSubset <- gallupRaw %>% 
    select(all_of(varRequired))

# Save the gallupSubset data frame to a .rds file for later use
saveRDS(gallupSubset, "GWP_RawSubset_{{PROJECT_NAME}}_{{DATE_FORMAT}}.rds")
```

## 1. Clean the Subset Gallup Data

### Import the subset raw data

Once we had the subset of the Gallup data, we imported the data and loaded the necessary packages:

```{r set-up}
# Load "dplyr"
library(dplyr)

# Read the RDS file
gallupSubset <- readRDS("GWP_RawSubset_{{PROJECT_NAME}}_{{DATE_FORMAT}}.rds")
```

{{NA_CONVERSION_CODE}}

{{BINARY_CONVERSION_CODE}}

The object `gallup` is now a cleaned subset of the Gallup data.
{{AFFECTS_CALCULATION}}
We save the Gallup cleaned data to a .rds file for later use

```{r exporting-gallup-cleaned}
saveRDS(gallup, "GWP_cleaned_{{PROJECT_NAME}}_{{DATE_FORMAT}}.rds")
```