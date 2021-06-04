# setup -------------------------------------------------------------------
width <- 6
height <- 6

# save plots --------------------------------------------------------------

ggsave(filename = "figures/km_overall.png",
       plot = print(gg.overall),
       width = width, height = height)

ggsave(filename = "figures/km_gender.png",
       plot = print(gg.gender),
       width = width, height = height)

ggsave(filename = "figures/km_smoker.png",
       plot = print(gg.smoker),
       width = width, height = height)

ggsave(filename = "figures/km_joint.png",
       plot = print(gg.joint),
       width = width, height = height)
