# setup -------------------------------------------------------------------
# library(tableone)
# library(gt)
library(gtsummary)
library(survival)
library(survminer)

# tables ------------------------------------------------------------------

sf.1 <- survfit( Surv(time, event) ~ 1, analytic)
sf.gender <- survfit( Surv(time, event) ~ gender, analytic)
sf.joint <- survfit( Surv(time, event) ~ joint, analytic)
sf.smoker <- survfit( Surv(time, event) ~ smoker, analytic)

list_sf <- list(
  sf.1,
  sf.gender,
  sf.smoker,
  sf.joint
)

inf_tab <- tbl_survfit(list_sf, times = 2,
                       reverse = TRUE,
            label_header = "2-year prosthesis loosening",
            ) %>% add_p() #%>% as_kable()

inf_tab %>% as_kable()
