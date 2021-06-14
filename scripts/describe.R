# setup -------------------------------------------------------------------

# library(Hmisc) # describe
# library(skimr) # skim
# library(tableone)
# library(gmodels) # CrossTable
library(survival)
library(gtsummary)

# exploratory -------------------------------------------------------------

person_years <- pyears(Surv(time, event) ~ 1, analytic, scale = 1)

age.min <- min(analytic$age)
age.max <- max(analytic$age)
bmi.min <- min(analytic$bmi)
bmi.max <- max(analytic$bmi)
opt.min <- min(analytic$op_time)
opt.max <- max(analytic$op_time)

# tables ------------------------------------------------------------------

desc_tab <- analytic %>%
  select(gender, age, bmi, op_time, smoker, joint, status) %>%
  tbl_summary(statistic = all_continuous() ~ "{mean} ({sd})") #%>% as_kable()

desc_tab %>% as_kable()

desc_tab2 <- analytic %>%
  # group_by(status) %>%
  select(gender, age, bmi, op_time, smoker, joint, status) %>%
  tbl_summary(by = status, statistic = all_continuous() ~ "{mean} ({sd})") %>%
  add_p(test = all_continuous() ~ "t.test") #%>% as_kable()

desc_tab2 %>% as_kable()


