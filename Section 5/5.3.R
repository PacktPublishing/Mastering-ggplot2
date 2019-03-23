# Load Modules
library(ggplot2)

library(treemapify)

ggplot2::ggplot(G20, ggplot2::aes(area = gdp_mil_usd, fill = region)) +
  geom_treemap()

ggplot(G20, aes(area = gdp_mil_usd, fill = hdi)) +
  geom_treemap()

ggplot(G20, aes(area = gdp_mil_usd, fill = hdi, label = country)) +
  geom_treemap() +
  geom_treemap_text(fontface = "italic", colour = "white", place = "centre",
                    grow = TRUE)
