# setup -------------------------------------------------------------------
# library(ggplot2)
library(survminer)

# plots -------------------------------------------------------------------

gg.overall <- ggsurvplot(sf.1, risk.table = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

gg.gender <- ggsurvplot(sf.gender, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

gg.smoker <- ggsurvplot(sf.smoker, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

gg.joint <- ggsurvplot(sf.joint, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")


