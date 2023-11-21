#' CESAB: A Research Compendium
#' 
#' @description 
#' A paragraph providing a full description of the project and describing each 
#' step of the workflow.
#' 
#' @author Terence Legrand \email{legrandterence@gmail.com}
#' 
#' @date 2023/11/20



## Install Dependencies (listed in DESCRIPTION) ----

devtools::install_deps(upgrade = "never")


## Load Project Addins (R Functions and Packages) ----

devtools::load_all(here::here())


## Global Variables ----

# You can list global variables here (or in a separate R script)


## Run Project ----

# List all R scripts in a sequential order and using the following form:
# source(here::here("analyses", "script_X.R"))

source(here::here("analyses", "download-data.R"))

# Biodiversity analysis

source(here::here("analyses", "biodiversity-analyses.R"))



quarto::quarto_render(input = "index.qmd",
                        output_format = "html")
