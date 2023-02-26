library(here)
library(jsonlite)

base <- "https://api.uktradeinfo.com"

# CN codes
data <- fromJSON("https://api.uktradeinfo.com/Commodity", flatten = TRUE)
saveRDS(data$value, here("data", "cncodes.rds"))

# SITC codes
data <- fromJSON("https://api.uktradeinfo.com/SITC", flatten = TRUE)
saveRDS(data$value, here("data", "sitc.rds"))

# Countries
data <- fromJSON("https://api.uktradeinfo.com/Country", flatten = TRUE)
saveRDS(data$value, here("data", "country.rds"))

# Flows
data <- fromJSON("https://api.uktradeinfo.com/FlowType", flatten = TRUE)
saveRDS(data$value, here("data", "flowtype.rds"))
