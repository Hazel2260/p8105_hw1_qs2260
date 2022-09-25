P8105 HW1
================
Qingzhen Sun

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.3.6      ✔ purrr   0.3.4 
    ## ✔ tibble  3.1.8      ✔ dplyr   1.0.10
    ## ✔ tidyr   1.2.0      ✔ stringr 1.4.1 
    ## ✔ readr   2.1.2      ✔ forcats 0.5.2 
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(ggplot2)
```

``` r
data("penguins", package = "palmerpenguins")
```

\#Problem 1 view(penguins)

The 8 variables in the table are: species, island, bill_length_mm,
bill_depth_mm, flipper_length_mm, body_mass_g, sex, year.

The penguins data sheet has 344 row and 8 column.

The mean of flipper length is 200.9152047.

``` r
# The scatterplot:
ggplot(penguins, aes(x= bill_length_mm, y=flipper_length_mm)) + geom_point(aes(color=species))
```

    ## Warning: Removed 2 rows containing missing values (geom_point).

![](hw1_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
ggsave
```

    ## function (filename, plot = last_plot(), device = NULL, path = NULL, 
    ##     scale = 1, width = NA, height = NA, units = c("in", "cm", 
    ##         "mm", "px"), dpi = 300, limitsize = TRUE, bg = NULL, 
    ##     ...) 
    ## {
    ##     dpi <- parse_dpi(dpi)
    ##     dev <- plot_dev(device, filename, dpi = dpi)
    ##     dim <- plot_dim(c(width, height), scale = scale, units = units, 
    ##         limitsize = limitsize, dpi = dpi)
    ##     if (!is.null(path)) {
    ##         filename <- file.path(path, filename)
    ##     }
    ##     if (is_null(bg)) {
    ##         bg <- calc_element("plot.background", plot_theme(plot))$fill %||% 
    ##             "transparent"
    ##     }
    ##     old_dev <- grDevices::dev.cur()
    ##     dev(filename = filename, width = dim[1], height = dim[2], 
    ##         bg = bg, ...)
    ##     on.exit(utils::capture.output({
    ##         grDevices::dev.off()
    ##         if (old_dev > 1) grDevices::dev.set(old_dev)
    ##     }))
    ##     grid.draw(plot)
    ##     invisible(filename)
    ## }
    ## <bytecode: 0x7fdfa1756320>
    ## <environment: namespace:ggplot2>

\#Problem 2

``` r
# Create the data frame.
df = tibble(
  RS = rnorm(10),
  logical = RS > 0,
  C = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"),
  L = factor(c("A", "B", "C", "A", "A", "B", "C", "A", "B", "C"))
)
df
```

    ## # A tibble: 10 × 4
    ##        RS logical C     L    
    ##     <dbl> <lgl>   <chr> <fct>
    ##  1 -0.438 FALSE   1     A    
    ##  2 -0.536 FALSE   2     B    
    ##  3 -0.775 FALSE   3     C    
    ##  4 -0.493 FALSE   4     A    
    ##  5 -1.54  FALSE   5     A    
    ##  6  1.14  TRUE    6     B    
    ##  7  0.556 TRUE    7     C    
    ##  8  0.612 TRUE    8     A    
    ##  9  2.04  TRUE    9     B    
    ## 10  1.06  TRUE    10    C

``` r
# The RS variable has the mean of around 0.307.
mean(as.numeric(df$RS))
# The logical variable has the mean of 0.6.
mean(as.numeric(df$logical))
# The C variable has the mean of 5.5.
mean(as.numeric(df$C))
# The L variable has the mean of 1.9.
mean(as.numeric(df$L))
```
