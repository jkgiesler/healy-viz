# Plotting Figures from Data Visualization: A Practical Introduction in Python

Figures are built using the excellent python package [plotnine](https://github.com/has2k1/plotnine). Where I can't easily find toy datasets as python packages, I'm exporting them from the [socviz](https://cran.r-project.org/web/packages/socviz/index.html) package.

Link to text: https://socviz.co.

## plotnine issues found so far:
- need to implement a custom smoothing function for GAM in `geom_smooth` (plotnine docs have example)
- no subtitle/caption in `labs`
- [adjustText](https://github.com/Phlya/adjustText) is limited compared to [ggrepel](https://github.com/slowkow/ggrepel) (couldn't only label text on outliers like plots 5.19/5.20)