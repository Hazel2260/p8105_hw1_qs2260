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

\#Problem 1

``` r
view(penguins)
nrow(penguins)
```

    ## [1] 344

``` r
ncol(penguins)
```

    ## [1] 8

``` r
summary(penguins)
```

    ##       species          island    bill_length_mm  bill_depth_mm  
    ##  Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10  
    ##  Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60  
    ##  Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30  
    ##                                  Mean   :43.92   Mean   :17.15  
    ##                                  3rd Qu.:48.50   3rd Qu.:18.70  
    ##                                  Max.   :59.60   Max.   :21.50  
    ##                                  NA's   :2       NA's   :2      
    ##  flipper_length_mm  body_mass_g       sex           year     
    ##  Min.   :172.0     Min.   :2700   female:165   Min.   :2007  
    ##  1st Qu.:190.0     1st Qu.:3550   male  :168   1st Qu.:2007  
    ##  Median :197.0     Median :4050   NA's  : 11   Median :2008  
    ##  Mean   :200.9     Mean   :4202                Mean   :2008  
    ##  3rd Qu.:213.0     3rd Qu.:4750                3rd Qu.:2009  
    ##  Max.   :231.0     Max.   :6300                Max.   :2009  
    ##  NA's   :2         NA's   :2

``` r
# There are 8 variable in the table: species, island, bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g, sex and year.
# The penguins data sheet has 344 row and 8 column.
# The mean of flipper length is 200.9 mm.


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
    ## <bytecode: 0x7fa81c55d498>
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
    ##         RS logical C     L    
    ##      <dbl> <lgl>   <chr> <fct>
    ##  1 -0.393  FALSE   1     A    
    ##  2 -0.762  FALSE   2     B    
    ##  3 -2.76   FALSE   3     C    
    ##  4 -0.744  FALSE   4     A    
    ##  5  0.0212 TRUE    5     A    
    ##  6  1.56   TRUE    6     B    
    ##  7 -0.251  FALSE   7     C    
    ##  8 -0.0300 FALSE   8     A    
    ##  9 -1.30   FALSE   9     B    
    ## 10  0.121  TRUE    10    C

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
