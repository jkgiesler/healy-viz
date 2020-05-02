setwd("~/src/healy-viz")
install.packages(c('tidyverse','gapminder'))
require(tidyverse)
require(gapminder)
require(feather)
feather::write_feather(gapminder,'gapminder.f')

