# setup -------------------------------------------------------------------

# library(Hmisc) # describe
# library(skimr) # skim
# library(tableone)
# library(gmodels) # CrossTable
library(gtsummary)

# exploratory -------------------------------------------------------------


# tables ------------------------------------------------------------------

desc_tab <- analytic %>%
  select(gender, age, bmi, smoker, joint, status) %>%
  tbl_summary(statistic = all_continuous() ~ "{mean} ({sd})") #%>% as_kable()

desc_tab %>% as_kable()

desc_tab2 <- analytic %>%
  # group_by(status) %>%
  select(gender, age, bmi, smoker, joint, status) %>%
  tbl_summary(by = status, statistic = all_continuous() ~ "{mean} ({sd})") %>%
  add_p(test = all_continuous() ~ "t.test") #%>% as_kable()

desc_tab2 %>% as_kable()


