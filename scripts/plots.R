# setup -------------------------------------------------------------------
# library(ggplot2)
library(survminer)

# plots -------------------------------------------------------------------

gg.overall <- ggsurvplot(sf.1, cumevents = TRUE, fun = "cumhaz")+
  # ggtitle("Prosthesis loosening") +
  xlab("Time (years)")

gg.gender <- ggsurvplot(sf.gender, fun = "cumhaz", pval = TRUE) +
  xlab("Time (years)")

gg.smoker <- ggsurvplot(sf.smoker, fun = "cumhaz", pval = TRUE) +
  xlab("Time (years)")

gg.joint <- ggsurvplot(sf.joint, fun = "cumhaz", pval = TRUE) +
  xlab("Time (years)")
