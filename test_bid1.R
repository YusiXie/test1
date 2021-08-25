dfArtAuction <- data.frame(
  amount_of_bid = c(1, 2, 3, 4),
  prob_of_mon_bid = c(0, 0.5, 0.5, 0),
  prob_of_tue_bid = c(0, 0.8, 0, 0.2)
)

standing_offer <- 0.9

install.packages("dplyr")
library(dplyr)

df_Tuesday<-dfArtAuction %>%
  mutate(tue_dec = ifelse(amount_of_bid > standing_offer,
                          "Accept", "Reject")) %>%
  mutate(tue_val = ifelse(tue_dec == "Accept", amount_of_bid*prob_of_tue_bid,
                          standing_offer * prob_of_tue_bid)) %>%
Tue_EMV <- sum(df_Tuesday$tue_val)
