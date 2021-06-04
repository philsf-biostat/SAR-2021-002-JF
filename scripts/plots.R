# setup -------------------------------------------------------------------
# library(ggplot2)
library(survminer)

# plots -------------------------------------------------------------------

gg.overall <- ggsurvplot(sf.1, cumevents = TRUE, fun = "cumhaz")+
  # ggtitle("Prosthesis loosening") +
  xlab("Time (years)")

gg.gender <- ggsurvplot(sf.gender, pval = TRUE) +
  xlab("Time (years)")

gg.smoker <- ggsurvplot(sf.smoker, pval = TRUE) +
  xlab("Time (years)")

gg.joint <- ggsurvplot(sf.joint, pval = TRUE) +
  xlab("Time (years)")
