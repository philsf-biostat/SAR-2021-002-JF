# setup -------------------------------------------------------------------
# library(ggplot2)
library(survminer)

# plots -------------------------------------------------------------------

ggsurvplot(sf.1) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

ggsurvplot(sf.gender, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

ggsurvplot(sf.smoker, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")

ggsurvplot(sf.joint, pval = TRUE) +
  ggtitle("Kaplan-Meier plot of prosthesis loosening") +
  xlab("Time (years)")


