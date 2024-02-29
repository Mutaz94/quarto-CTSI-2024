#' ---
#' title: Theophylline PK
#' author: First Last
#' date: last-modified
#' format: html 
#' ---

#' The aim of this script is to show how to render R script into 
#' Quarto document. This is based on `knitr::spin` function
#' More info can be found [spin](https://bookdown.org/yihui/rmarkdown-cookbook/spin.html)

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


#' We can use inline code 
{{ pi }}
#' as presented here