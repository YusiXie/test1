## Example 2.24
mu_x <- 0.1
sd_x <- 0.08

mu <- 0.1
sd_y <-0.04

cor_xy <- -0.75

a <- seq(0,1,0.01)
sd_portfolio <- sqrt(a^2*sd_x^2 + (1-a)^2*sd_y^2 + 2*a*(1-a)*sd_x*sd_y*cor_xy)

min(sd_portfolio)
which.min(sd_portfolio)
a[which.min(sd_portfolio)]
