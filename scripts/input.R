# setup -------------------------------------------------------------------
library(readxl)
# library(data.table)
library(tidyverse)
library(lubridate)
library(janitor)
library(skimr)
library(labelled)

# data loading ------------------------------------------------------------
# raw.data <- fread("dataset/file.csv")
# raw.data <- readxl::read_excel("dataset/file.xls")

# raw.data <- data.table(raw.data)

na_dates <- c("xxxxxxxxxx", "xxxxxxxxxxx", "xxxxxxxxxxxx", "xxxxxxxxxxxxx", "xxxxxxxxxxxxxx", "xxxxxxxxxxxxxxx")
df.raw <- janitor::clean_names(
  read_excel("dataset/Univation DATAMASTER-english2.xlsx",
             range = 'A2:AH89',
             na = na_dates,
             )
  )

# data cleaning -----------------------------------------------------------

analytic <- df.raw %>%
  # rename bmi column
  rename(bmi = b_m_i) %>%
  # remove empty patients
  filter(!str_detect(name, "Patient")) %>%
  # select analytic columns
  select(
    id,
    gender,
    birth,
    age,
    bmi,
    joint,
    smoker,
    uka_date,
    # op_time,
    loosening_date,
    # rev_date,
    ) %>%
  # set var types
  mutate(
    # age = as.numeric(age), # use given age
    age = floor(as.duration(interval(birth, uka_date))/dyears()), # compute age from dates
    bmi = as.numeric(bmi),
    # Set Smoker as factor
    smoker = factor(smoker, labels = c("Yes", "No")),
    smoker = relevel(smoker, "No")
  )


# data wrangling ----------------------------------------------------------

analytic <- analytic %>%
  mutate(
    td = as.duration( interval(uka_date, loosening_date) ),
    time = case_when(
      is.na(td) ~ as.duration(max(td, na.rm = TRUE))/dyears(1),
      TRUE ~ td/dyears(1)
    ),
    event = case_when(
      is.na(td) ~ 0,
      TRUE ~ 1
    ),
    status = factor(event, labels = c("Success", "Failure"))
  )
# print(analytic %>% skim())

# labels ------------------------------------------------------------------

var_labels <- list(
  gender = "Gender",
  age = "Age",
  bmi = "BMI",
  joint = "Joint",
  smoker = "Smoker",
  status = "Post-op status",
  event = "Loosening"
  )
var_label(analytic) <- var_labels
# analytic <- analytic %>% set_value_labels(event = labelled(c("Success" = 0, "Failure" = 1)))

# double check new data ---------------------------------------------------

# analytic <- remove_var_label(analytic)
# analytic.old <- analytic %>% rename(status = group)
# all.equal(head(analytic.old, 80), head(analytic, 80)) # first 80 rows, before "Patient 1"
# all_equal(tail(analytic.old, 2), tail(analytic, 2)) # last 2 rows, after new patients

# both checks passed, no changes in previously known data

# analytic[81:85, ] %>% skim()
# new data looks ok
