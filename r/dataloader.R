library(tidyverse)
library(readxl)
library(here)

# file <- here("data/school_quality.csv")
# # school_quality <- read.table(file=file, header=TRUE, sep=",")
# school_quality <- read_delim(file=file,
# delim=",",
# col_names=c('ay', 'ry', 'dbn', 'school_name', 'report_type', 'school_type', 'metric_variable', 'metric_display', 'students_n', 'metric_value', 'comparison_group_average', 'metric_score'),
# col_types=cols(
#   ay=col_integer(),
#   ry=col_integer(),
#   dbn=col_character(),
#   school_name=col_character(),
#   report_type=col_character(),
#   school_type=col_character(),
#   metric_variable=col_character(),
#   metric_display=col_character(),
#   students_n=col_number(),
#   metric_value=col_double(),
#   comparison_group_average=col_double(),
#   metric_score=col_double()
# ),
# skip=1)
# # school_quality <- fread(input=file, sep=',', header=TRUE)
# tail(school_quality)


# download the infohub excel file, read it in, and cache a csv while silently passing back the tibble.
# hs_directory <- local(
#   {
#     url <- c('https://infohub.nyced.org/docs/default-source/default-document-library/ose/fall-2025---hs-directory-datab85f64a0-05b9-439a-8e29-052ce60a5d86.xlsx')
#     download.file(url=url,
#       destfile=here('data/hs_directory_2025.xlsx'),
#       method='wget')
#     destfile=file <- here('data/hs_directory_2025.xlsx')
#     hs_directory <- read_xlsx(path=destfile, sheet='Data') %>% write_csv(here('data/hs_directory_2025.csv'))
#   }
# )

# r/dataloader.R
# Lightweight ETL module: load datasets with explicit schema, cache to derived, and
# avoid side effects on sourcing.

# Top-level constants (do not download on source)
SCHOOL_QUALITY_URL <- 'https://data.cityofnewyork.us/resource/dnpx-dfnc.csv'
HS_DIRECTORY_URLS <- list(
  `2025` = 'https://infohub.nyced.org/docs/default-source/default-document-library/ose/fall-2025---hs-directory-datab85f64a0-05b9-439a-8e29-052ce60a5d86.xlsx'
)

# Helper: ensure data directories exist
ensure_data_dirs <- function() {
  base <- here::here('data')
  raw_dir <- here::here('data', 'raw')
  derived_dir <- here::here('data', 'derived')

  for (d in c(base, raw_dir, derived_dir)) {
    if (!dir.exists(d)) {
      dir.create(d, recursive = TRUE, showWarnings = FALSE)
    }
  }

  list(data = base, raw = raw_dir, derived = derived_dir)
}

# Helper: central path generator for datasets
dataset_paths <- function(dataset, year = NULL) {
  ensure_data_dirs()
  switch(dataset,
    school_quality = {
      raw <- here::here('data', 'raw', 'school_quality.csv')
      derived <- here::here('data', 'derived', 'school_quality.rds')
      list(raw = raw, derived = derived)
    },
    hs_directory = {
      if (is.null(year)) stop('year must be provided for hs_directory dataset')
      year <- as.character(year)
      raw <- here::here('data', 'raw', paste0('hs_directory_', year, '.xlsx'))
      derived_csv <- here::here('data', 'derived', paste0('hs_directory_', year, '.csv'))
      derived_rds <- here::here('data', 'derived', paste0('hs_directory_', year, '.rds'))
      list(raw = raw, derived_csv = derived_csv, derived_rds = derived_rds)
    },
    stop('Unknown dataset: ', dataset)
  )
}

# 1. Explicit schema for school_quality
school_quality_schema <- function() {
  readr::cols(
    ay = readr::col_integer(),
    ry = readr::col_integer(),
    dbn = readr::col_character(),
    school_name = readr::col_character(),
    report_type = readr::col_character(),
    school_type = readr::col_character(),
    metric_variable = readr::col_character(),
    metric_display = readr::col_character(),
    students_n = readr::col_number(),
    metric_value = readr::col_double(),
    comparison_group_average = readr::col_double(),
    metric_score = readr::col_double()
  )
}

# 2. Download helper (no hardcoded methods)
download_if_missing <- function(url, destfile, force = FALSE, quiet = TRUE) {
  if (!force && file.exists(destfile)) {
    return(destfile)
  }
  # ensure parent dir exists
  parent <- dirname(destfile)
  if (!dir.exists(parent)) dir.create(parent, recursive = TRUE, showWarnings = FALSE)
  download.file(url = url, destfile = destfile, mode = 'wb', quiet = quiet)
  destfile
}

# 3. Load school_quality with explicit schema
load_school_quality <- function(force = FALSE, cache = TRUE) {
  ensure_data_dirs()
  paths <- dataset_paths('school_quality')
  raw_path <- paths$raw
  derived_path <- paths$derived

  if (!file.exists(raw_path) || force) {
    if (SCHOOL_QUALITY_URL %in% c('<TODO: add source URL>', '')) {
      stop('SCHOOL_QUALITY_URL is not set. Provide a source URL to enable downloads.')
    }
    download_if_missing(SCHOOL_QUALITY_URL, raw_path, force = force)
  }

  cols <- school_quality_schema()
  df <- readr::read_delim(
    file = raw_path,
    delim = ',',
    col_names = c(
      'ay', 'ry', 'dbn', 'school_name', 'report_type', 'school_type',
      'metric_variable', 'metric_display', 'students_n', 'metric_value',
      'comparison_group_average', 'metric_score'
    ),
    col_types = cols,
    skip = 1
  ) |> tibble::as_tibble()

  if (cache) {
    readr::write_rds(df, derived_path)
  }
  df
}

# 4. hs_directory URL helper
hs_directory_url <- function(year) {
  year <- as.character(year)
  url <- HS_DIRECTORY_URLS[[year]]
  if (is.null(url)) stop('Unsupported hs_directory year: ', year)
  url
}

# 5. Load hs_directory by year
load_hs_directory <- function(year = 2025, force = FALSE, cache = TRUE) {
  ensure_data_dirs()
  paths <- dataset_paths('hs_directory', year = year)
  raw_path <- paths$raw
  derived_csv <- paths$derived_csv
  derived_rds <- paths$derived_rds

  if (!file.exists(raw_path) || force) {
    url <- hs_directory_url(year)
    download_if_missing(url, raw_path, force = force)
  }

  df <- readxl::read_xlsx(path = raw_path, sheet = 'Data')

  # basic validation: case-insensitive check for required columns
  nms <- tolower(names(df))
  required <- c('dbn', 'school_name')
  missing <- required[!(required %in% nms)]
  if (length(missing) > 0) {
    stop('Missing required columns in hs_directory data: ', paste(missing, collapse = ', '),
         '. Available columns: ', paste(names(df), collapse = ', '))
  }
  if (nrow(df) < 1) {
    stop('hs_directory data has no rows.')
  }

  if (cache) {
    readr::write_csv(df, derived_csv)
    readr::write_rds(df, derived_rds)
  }

  df
}

# 6. Run the ETL for a given year
run_etl <- function(year = 2025, force = FALSE, cache = TRUE) {
  ensure_data_dirs()
  school_quality <- load_school_quality(force = force, cache = cache)
  hs_directory <- load_hs_directory(year = year, force = force, cache = cache)
  list(school_quality = school_quality, hs_directory = hs_directory)
}
