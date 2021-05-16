---
title: "Statistical Analysis Plan for Time until implant failure in a knee prosthesis sub-population of the Helios Klinikum Berlin-Buch hospitals"
author: '**From:** Felipe Figueiredo **To:** Jens Freitag'
date: '**Date: ** dd/mm/aaaa'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style-SAP.docx
    toc: yes
subtitle: 'SAP: SAP_analise_dados_JF_2021-v01'
# toc-title: "Sumário"
---



---

**Document version**


|Version |Alterations     |
|:-------|:---------------|
|01      |Initial version |

---


# Abbreviations

- BMI: body mass index

# Introduction

## Context

## Objectives

Evaluate the time-to-failure in a sample of knee prosthesis patient data from the Helios Klinikum Berlin-Buch hospitals

## Hypotheses

# Data cleaning



The data will be pre-processed, rearranged and cleaned as follows:

- All variables will be standardized
  - variable names will be standardized for processing purposes, labels will be attributed for reporting purposes;
  - observations will be standardized according to variable type (numeric, dates, categorical, etc)
- All categorical variables will be standardized according to their categories pre-defined in the dictionary provided
  - Gender: M/W
  - Smoking status: No/Yes
  - Joint: L/R
- All dates will be standardized and invalid values removed
  - All invalid values like "xxxxxxxxxx",  "xxxxxxxxxxxxxxx", etc will be removed before data processing;
- Age will be computed as whole years between birth and first surgery, with calendar accuracy;
- 
  
Two observations appear to be test data (Names: Patient 1, Patient 2) and will be removed.

# Study variables

Study variables selected for this analysis are:

- Gender
- Age
- BMI
- Joint operated on
- Smoking status
- Date of surgery
- Date of failure diagnosis

Other variables from the raw dataset will not be used for the analysis.
The event occurrence and time under observation will be computed as defined in the section 4.1.

After all data cleaning and variable selection procedures the analytic dataset should have a similar structure as shown in Table 1.


| id  | gender | age | bmi | joint | uka_date | loosening_date | event | time |
|:---:|:------:|:---:|:---:|:-----:|:--------:|:--------------:|:-----:|:----:|
|  1  |        |     |     |       |          |                |       |      |
|  2  |        |     |     |       |          |                |       |      |
|  3  |        |     |     |       |          |                |       |      |
| ... |        |     |     |       |          |                |       |      |
| 82  |        |     |     |       |          |                |       |      |

Table: **Table1** Mock-up example of analytic dataset

The analytic dataset will be included in the private version of the report, and will be omitted from the public version of the report.

## Primary and secondary outcomes

Upon inspection of the dates of first surgery and dates of loosening for individual patients, it appears the study period is delimited between 2017-05-10 and 2021-02-25, so these will be the dates considered as study start and end.

The event of interest in this analysis is the diagnosis of implant loosening.
The time until the event of interest will be computed between the date of first surgery and date of implant loosening.
Patients that reached study end date without implant failure will be censored.

## Covariates

Study outcomes will not be adjusted for covariates like age, gender or BMI.

# Statistical methods

## Statistical analyses

### Descriptive analyses


| Characteristic | N |
|:--------------:|:-:|
|     Gender     |   |
|       M        |   |
|       W        |   |
|      Age       |   |
|      BMI       |   |
|     Joint      |   |
|       L        |   |
|       R        |   |
|   Loosening    |   |
|    Success     |   |
|    Failure     |   |

### Inferential analyses

### Statistical modeling

## Significance and Confidence Intervals

## Study size and Power

### Statistical packages

This analysis will be performed using statistical software `R` version 4.0.5.

# Exceptions and Observations

# References

# Appendix

