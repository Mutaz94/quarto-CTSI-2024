#' ---
#' title: Theophylline PK
#' author: First Last
#' date: last-modified
#' format: 
#'    pdf:
#'      toc: true
#' ---

library(ggplot2)

#' ## Exploring the data
#' See @fig-conc for concentration-time profiles

#| label: fig-conc
#| fig-cap: Concentration-time profile
#| warning: false

ggplot(Theoph, aes(Time, conc, group=Subject)) + 
  geom_line() + 
  geom_point(color="peru") + 
  theme_bw(base_size = 13) + 
  labs(x = "Time (hr)", y = "Concentration (mg/L)")


#' One can also create a nice table as @tbl-conc 

#| label: tbl-conc 
#| tbl-cap: First 5 rows in Theophylline dataset 

Theoph |>
  dplyr::slice(1:5) |>
  knitr::kable()
