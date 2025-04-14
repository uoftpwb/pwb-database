# Population Well-Being Database Tools

This repository provides tools for researchers working with population well-being data. It contains standardized data processing scripts for multiple well-being related datasets, helping researchers clean and prepare data for analysis in a consistent manner.

This project is developed by the Population Well-being Lab at the University of Toronto, under the direction of Professor Felix Cheung.

## Currently Supported Datasets

### 1. Gallup World Poll Data Processing

A tool to generate customized data cleaning scripts for Gallup World Poll data.

#### Streamlined Workflow

1. **Clone/download this repository** to your local machine
2. **Generate a cleaning script** using the script generator [1_GallupWorldPoll_cleaningScript_generation.rmd](gallup_world_poll/scripts/1_GallupWorldPoll_cleaningScript_generation.rmd)
3. **Copy the generated script** to your own project repository
4. **Run the cleaning script** in your project to process your Gallup World Poll data

[View detailed Gallup World Poll documentation](#gallup-world-poll-data-processing)

### 2. World Bank Data Processing

Tools to download and process World Bank indicators related to well-being and development.

#### Streamlined Workflow

1. **Clone/download this repository** to your local machine
2. **Run or modify the download script** [1_WorldBank_dataDownload.Rmd](world_bank/scripts/1_WorldBank_dataDownload.Rmd) to customize which indicators you need
3. **Use the processed data** in your research projects

[View detailed World Bank documentation](#world-bank-data-processing)

## How Researchers Can Use This Repository

This repository is designed to:

1. **Standardize data preparation** across research projects
2. **Save time** by providing ready-to-use data processing scripts
3. **Improve reproducibility** by using consistent data cleaning approaches
4. **Enable customization** while maintaining core processing standards

Researchers can:
- Use the scripts as-is for standard processing
- Customize parameters to fit specific research needs
- Contribute improvements or extensions to the processing scripts
- Request support for additional data sources

## License

This project is licensed under the [GNU General Public License v3.0 (GPL-3.0)](https://www.gnu.org/licenses/gpl-3.0.en.html). This means:

- You can freely use, modify, and distribute this software
- Any derivative work must also be distributed under the same license (GPL-3.0)
- You must include the original copyright notice and license text
- There is no warranty for this software

For more details, see the full license text on the [GNU website](https://www.gnu.org/licenses/gpl-3.0.en.html).

## Future Development

This is an ongoing project. We plan to add support for more well-being related datasets.

**Want to contribute or request a new dataset?** Please open an issue or submit a pull request.

---

## Gallup World Poll Data Processing

### Using the Cleaning Script Generator

#### Prerequisites

- R and RStudio installed
- Required R packages: `dplyr`, `glue`, `rio`
- Extracted metadata file (already provided, you don't need to run the extraction script yourself)

#### Steps to Generate a Cleaning Script

1. Open [`gallup_world_poll/scripts/1_GallupWorldPoll_cleaningScript_generation.rmd`](gallup_world_poll/scripts/1_GallupWorldPoll_cleaningScript_generation.rmd) in RStudio/VSCode.

2. **Configure the parameters in the "User Parameters" section, e.g.:**
   - Set your project name
   - Specify your data file name
   - Select variables to extract
   - Choose whether to include affect calculations

3. **Run the script** to generate your custom cleaning code

4. Find the generated script in the [`gallup_world_poll/scripts/generated_scripts/`](gallup_world_poll/scripts/generated_scripts/) folder. The script will be named according to your project name and the data file name you specified.

5. **Copy the generated script** to your own project repository for further analysis.

For detailed instructions, parameter explanations, and troubleshooting information, please refer to the documentation within the RMD file.

#### Folder Structure

The script expects the following folder structure:
```
gallup_world_poll/
  ├── data/
  │   ├── metadata/        # Contains variable metadata
  │   │   └── Gallup_World_Poll_XXXXXX_Attributes.rds
  │   └── raw/             # Place raw Gallup data files here if 0_GallupWorldPoll_attributes_extraction.rmd needs to be run
  └── scripts/
      ├── 0_GallupWorldPoll_attributes_extraction.rmd  # Script for extracting metadata (already executed, you don't need to run this)
      ├── 1_GallupWorldPoll_cleaningScript_generation.rmd  # The generator script
      ├── generated_scripts/  # Will contain generated cleaning scripts
      └── templates/          # Contains template files for script generation
          ├── affects_calculation_template.R
          ├── binary_conversion_template.R
          ├── cleaning_script_template.R
          └── na_conversion_template.R
```

#### Output

The generator produces an R markdown file with:
- Variable extraction code
- Non-substantive response conversion to NA
- Binary response recoding (Yes/No to 1/0)
- Optional affect indices calculation

## World Bank Data Processing

### Using the World Bank Data Download Script

#### Prerequisites

- R and RStudio installed
- Required R packages: `WDI`, `tidyverse`, `countrycode`

#### Steps to Download and Process World Bank Data

1. Open [`world_bank/scripts/1_WorldBank_dataDownload.Rmd`](world_bank/scripts/1_WorldBank_dataDownload.Rmd) in RStudio/VSCode.

2. **Modify the indicators list** if needed to include the specific World Bank indicators relevant to your research

3. **Run the script** to download and process the data

4. Find the processed data in the `world_bank/data/processed/` folder

For detailed information on available indicators and customization options, please refer to the documentation within the RMD file.

## Contact

For questions or support regarding this repository, please contact:

- Kenith Chan
- GitHub: [ken1th](https://github.com/ken1th)