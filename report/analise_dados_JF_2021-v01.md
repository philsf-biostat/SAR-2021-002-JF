---
title: "Implant failure rates in a knee prosthesis sub-population of the Helios Klinikum Berlin-Buch hospitals"
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
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'REPORT: analise_dados_JF_2021-v01'
# toc-title: "Sumário"
---



---

**Document version**


|Version |Alterations     |
|:-------|:---------------|
|01      |Initial version |

---

# Abbreviations

- BMI: body-mass index
- CI: 95% confidence interval
- SD: standard deviation

# Introduction

## Objective

Perform a time-to-failure analysis to estimate implant loosening rates in a sample of knee prosthesis patient data from the Helios Klinikum Berlin-Buch hospitals

## Data reception and cleaning

The data were be pre-processed, rearranged and cleaned as follows:

- All variables were standardized
  - variable names were standardized for processing purposes, labels were attributed for reporting purposes;
  - observations were standardized according to variable type (numeric, dates, categorical, etc)
- All categorical variables were standardized according to their categories pre-defined in the dictionary provided
  - Gender: M/W
  - Smoking status: No/Yes
  - Joint: L/R
- All dates were standardized and invalid values removed
  - All invalid values like "xxxxxxxxxx",  "xxxxxxxxxxxxxxx", etc were removed before data processing;
- Age was computed as whole years between birth and first surgery, with calendar accuracy;

# Methods



## Variables

Upon inspection of the dates of first surgery and dates of loosening for individual patients, it appears the study period is delimited between 2017-05-10 and 2021-02-25, so these were the dates considered as study start and end.

### Primary and secondary outcomes

The event of interest in this analysis is the diagnosis of implant loosening.
The primary outcome was defined as the cumulative hazard of implant loosening, and computed with the Kaplan-Meier estimator.

The time until the event of interest was computed between the date of first surgery and date of implant loosening.
Patients that reached study end date without implant failure were censored.
Considering the study period of approximately 3 years, time under observation was measured in years.

### Covariates

Study outcomes were not adjusted for covariates like age, gender or BMI.

## Statistical analyses

Patient characteristics were described with frequency and proportion (%) for categorical variables and mean (SD) for numerical variables.
The main study outcome (time-to-failure) was presented in a Kaplan-Meier plot as well as the estimated failure rates and their corresponding CIs.
The failure rate was cross-analyzed with all available categorical variables, including gender, smoking status and joint.
Uni-variate analyses were performed using the log-rank test.
All analyses were performed using the significance level of 5%.
All significance hypothesis tests and confidence intervals computed were two-tailed.

### Statistical packages

This analysis was performed using statistical software `R` version 4.0.4.
Packages used for survival analyses were `survival` version 3.2.7 and `survminer` version 0.4.9.

# Results

## Study population and follow up

The study population was composed of 87 participants (Table 1).
Gender split was similar with 37 (43%) males and 50 (57%) females, with average (SD) age 61 (11) years.
The average (SD) BMI observed was approximately 30 (4) kg/m².
Twenty participants were smokers and the side of operation was approximately equally distributed in sides.



Overall, the study population contributed to a total of 150 person-years of time under observation, ranging from 7 weeks to 3.8 years.



|**Characteristic** |**N = 87** |
|:------------------|:----------|
|Gender             |           |
|M                  |37 (43%)   |
|W                  |50 (57%)   |
|Age                |61 (11)    |
|BMI                |29.8 (3.9) |
|Smoker             |20 (25%)   |
|Unknown            |7          |
|Joint              |           |
|L                  |47 (54%)   |
|R                  |40 (46%)   |
|Post-op status     |           |
|Success            |67 (77%)   |
|Failure            |20 (23%)   |

Table: **Table 1** Patient characteristics.

## Prosthesis loosening rates



Times to prosthesis loosening ranged from 7 weeks to 2.9 years (Figure 1).
Loosening events were observed in 20 (23%) of the included participants, accounting for approximately one quarter of the study population (Table 1).
The cumulative failure rate (CI) at the end of follow up was 33% (15% -- 46%) so the median time of failure could not be estimated.

After one year under observation the rate of failure (CI) was 12% (4% -- 18%), while after two years the rate is 23% (13% -- 32%).
Table 2 summarizes the estimates for 3 years of follow up.
There were no significant differences among groups when comparing genders, smoking status or the knee side operated on.


|**Characteristic** |3-year prosthesis loosening |**p-value** |
|:------------------|:---------------------------|:-----------|
|Overall            |33% (15%, 47%)              |            |
|Gender             |                            |>0.9        |
|M                  |36% (3.3%, 58%)             |            |
|W                  |33% (8.7%, 50%)             |            |
|Smoker             |                            |0.3         |
|No                 |25% (10%, 37%)              |            |
|Yes                |63% (0%, 91%)               |            |
|Joint              |                            |>0.9        |
|L                  |28% (10%, 43%)              |            |
|R                  |39% (0.9%, 62%)             |            |

Table: **Table 2** Cumulative hazard of prosthesis loosening after 3 years of follow up.
p-value: groups compared with the Log-rank test.

![](../figures/km_overall.png)

**Figure 1** Cumulative hazard of prosthesis loosening.

# Exceptions and Observations

# Conclusions

# References

- **SAP_analise_dados_JF_2021-v01** - Statistical Analysis Plan for Implant failure rates in a knee prosthesis sub-population of the Helios Klinikum Berlin-Buch hospitals.

# Appendix

## Exploratory data analysis

![](../figures/km_gender.png)

**Figure 2** Prostheses loosening by gender.

![](../figures/km_smoker.png)

**Figure 3** Prosthesis loosening by smoking status.

![](../figures/km_joint.png)
**Figure 4** Prosthesis loosening by joint operated.

## Analytical data-set

Due to confidentiality the data-set used in this analysis cannot be shared online in the public version of this report.


