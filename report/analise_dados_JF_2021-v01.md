---
title: "Time until implant failure in a knee prosthesis sub-population of the Helios Klinikum Berlin-Buch hospitals"
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
- SD: standard deviation

# Introduction

## Objectives

## Data reception and cleaning

# Methods



## Variables

### Primary and secondary outcomes

### Covariates

## Statistical analyses

### Statistical packages

This analysis was performed using statistical software `R` version 4.0.5.
Packages used for survival analyses were `survival` version 3.2.10 and `survminer` version 0.4.9.

# Results

## Study population and follow up

The study population was composed of 87 participants, contributing to a total of 217 person-years of observation (Table 1).
Gender split was similar with 37 (43%) males and 50 (57%) females, with average (SD) age 61 (11) years.
The typical BMI observed was approximately 30 kg/m²
Twenty participants were smokers and the side of operation was approximately equally distributed in sides.

The prosthesis failure was detected in 20 participants, accounting for approximately one quarter of the study population.


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

## Mortality
## Time to prosthesis failure


Times to prosthesis failure ranged from 7 weeks to almost 3 years.
The total failure rate at the end of study follow up was 23% so the median time of failure could not be estimated.
After one year under observation the rate of failure was 12% (4% -- 18%), while after two years the estimated failure rate is 21% (12% -- 29%).
There were no significant differences among groups when comparing genders, smoking status or the knee side operated on (Table 2).


|**Characteristic** |2-year prosthesis failure |**p-value** |
|:------------------|:-------------------------|:-----------|
|Overall            |21% (12%, 29%)            |            |
|Gender             |                          |0.7         |
|M                  |19% (5.3%, 31%)           |            |
|W                  |22% (9.6%, 33%)           |            |
|Smoker             |                          |0.4         |
|No                 |18% (7.9%, 28%)           |            |
|Yes                |25% (3.4%, 42%)           |            |
|Joint              |                          |0.8         |
|L                  |21% (8.7%, 32%)           |            |
|R                  |20% (6.6%, 31%)           |            |

Table: **Table 2** Prosthesis failure probabilities after 2-years of follow up.
p-value: groups compared with the Log-rank test.

# Exceptions and Observations

# Conclusions

# References

# Appendix

## Exploratory data analysis

## Analytical data-set

Due to confidentiality the data-set used in this analysis cannot be shared online in the public version of this report.


