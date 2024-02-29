#'---
#' title: Figure 1
#' format: pdf 
#'---

#| echo: false 
#| label: fig-one 
#| fig-cap: Concentration time profile 

library(ggplot2)

ggplot(Theoph, aes(Time, conc)) + 
  geom_point()


