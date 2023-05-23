## Install packages
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("lubridate")

## Load packages
library(tidyverse)
library(ggplot2)
library(lubridate)

## Import data 
setwd()
jan_2022 <- read_csv("202201-divvy-tripdata.csv")
feb_2022 <- read_csv("202202-divvy-tripdata.csv")
mar_2022 <- read_csv("202203-divvy-tripdata.csv")
apr_2022 <- read_csv("202204-divvy-tripdata.csv")
may_2022 <- read_csv("202205-divvy-tripdata.csv")
jun_2022 <- read_csv("202206-divvy-tripdata.csv")
jul_2022 <- read_csv("202207-divvy-tripdata.csv")
ago_2022 <- read_csv("202208-divvy-tripdata.csv")
set_2022 <- read_csv("202209-divvy-tripdata.csv")
out_2022 <- read_csv("202210-divvy-tripdata.csv")
nov_2022 <- read_csv("202211-divvy-tripdata.csv")
dec_2022 <- read_csv("202212-divvy-tripdata.csv")

## Checking data sets for consistency
colnames(jan_2022)
colnames(feb_2022)
colnames(mar_2022)
colnames(apr_2022)
colnames(may_2022)
colnames(jun_2022) 
colnames(jul_2022)
colnames(ago_2022)
colnames(set_2022)
colnames(out_2022)
colnames(nov_2022)
colnames(dec_2022)

## Checking data sets for structure
str(jan_2022)
str(feb_2022)
str(mar_2022)
str(apr_2022)
str(may_2022)
str(jun_2022) 
str(jul_2022)
str(ago_2022)
str(set_2022)
str(out_2022)
str(nov_2022)
str(dec_2022)

## Merge all the individual's months in one large data frame named "fullyear"
fullyear <- bind_rows(jan_2022, feb_2022, mar_2022, apr_2022, may_2022, jun_2022, jul_2022, ago_2022, set_2022, out_2022, nov_2022, nov_2022, dec_2022)

## Check the column names after merged
colnames(fullyear)

## Check the structure after merged
str(fullyear)

## Check the summary of the new data frame
summary(fullyear)

## Creation of column "Date"
all_trips$date <- as.Date(all_trips$started_at)

## Creation of Column Month
all_trips$month <- format(as.Date(all_trips$date), "%m")

## Creation of column "day"
fullyear$day <- format(as.Date(fullyear$date), "%d")

## Creation of column st"year"
fullyear$year <- format(as.Date(fullyear$date), "%Y")

## Creation of column "day_of_week"
fullyear$day_of_week <- format(as.Date(fullyear$date), "%A")

## Creation of column "ride_length" in seconds
fullyear$ride_length <- difftime(fullyear$ended_at,fullyear$started_at)

## Converting the column "ride_length" to numeric so we can run the calculations=
fullyear$ride_length <- as.numeric(as.character(fullyear$ride_length))
is.numeric(fullyear$ride_length)

## Remove irrelevant data, the data frame contains entries when the bike is taken out of the docks "HR QR" station and checked for quality by Divvy or the "ride_length" is negative.

## we will create a new data frame (v2) since data is being removed. 
