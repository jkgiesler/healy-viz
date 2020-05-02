setwd("~/src/healy-viz")
install.packages(c('tidyverse','gapminder'))
require(tidyverse)
require(gapminder)
require(feather)
feather::write_feather(gapminder,'gapminder.f')

p <- ggplot(
  data = gapminder,
  mapping = aes(x = gdpPercap, y = lifeExp)
)

# 3.4
p + geom_point()

# 3.6
p + geom_point() + geom_smooth()

# 3.7
p + geom_point() + geom_smooth(method='lm')

# 3.8
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10()

# 3.9
p + geom_point() + 
  geom_smooth(method = "gam") +
  scale_x_log10(labels=scales::dollar)

# 3.11
p + geom_point(color="purple") +
    geom_smooth(method = "loess") +
    scale_x_log10()

# 3.12
p + geom_point(alpha = 0.3) +
    geom_smooth(
      color = "orange", se= F,
      size  = 8, method = 'lm'
    ) +
    scale_x_log10()

# 3.13
p + geom_point(alpha = 0.3) +
    geom_smooth(method = "gam") +
    scale_x_log10(labels = scales::dollar) +
    labs(
      x = "GDP Per Capita",
      y = "Life Expectancy in Years",
      title = "Economic Growth and Life Expectancy",
      subtitle = "Data points are country-years",
      caption = "Source: Gapminder"
    )

# 3.16

p <- ggplot(
  data = gapminder,
  mapping = aes(
    x = gdpPercap,
    y = lifeExp,
    color = continent,
    fill  = continent
  )
) 

p + geom_point() + 
    geom_smooth(method = "loess") +
    scale_x_log10()



