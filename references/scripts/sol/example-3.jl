# %% [markdown]
# ---
# title: Testing Julia Rendering
# format: pdf
# ---

# %% 
#| echo: true 

using Plots

# %% [markdown]
"""
# Exploring Quarto ability to render Julia scripts

see @fig-one
"""

# %%
#| echo: true 
#| label: fig-one 
#| fig-cap: A test figure 
plot(rand(100))


