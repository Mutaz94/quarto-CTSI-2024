#' ---
#' title: Palmer Penguins
#' author: First Last
#' date: last-modified
#' format: html
#' ---

library(palmerpenguins)

#' ## Exploring the data
#' See @fig-bill-sizes for an exploration of bill sizes by species.

#| label: fig-bill-sizes
#| fig-cap: Bill Sizes by Species
#| warning: false

library(ggplot2)
ggplot(data = penguins,
       aes(x = bill_length_mm,
           y = bill_depth_mm,
           group = species)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  labs(title = "Penguin bill dimensions",
       subtitle = "Bill length and depth for Adelie, Chinstrap and Gentoo Penguins at Palmer Station LTER",
       x = "Bill length (mm)",
       y = "Bill depth (mm)",
       color = "Penguin species",
       shape = "Penguin species")