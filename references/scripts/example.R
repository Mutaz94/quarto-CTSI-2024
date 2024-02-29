#'---
#' title: my R script
#' format: pdf
#' date: last-modified
#'---

#| echo: true 
#| label: fig-one
#| fig-cap: Concentration time profile

library(ggplot2)
ggplot(Theoph, aes(Time, conc)) + 
  geom_point() + 
  theme_bw(base_size = 13)