#Descriptive analysis

## transform the column "ride_length" to minutes
fullyear_v2$ride_length_minutes <- fullyear_v2$ride_length / 60

## Calculating the average of the "ride_length_minutes" column
mean(fullyear_v2$ride_length,na.rm = TRUE)

## Calculating the midpoint number in the ascending array of the "ride_length_minutes" column
median(fullyear_v2$ride_length_minutes,na.rm = TRUE)

## Calculating the longest ride
max(fullyear_v2$ride_length_minutes,na.rm = TRUE)

## Calculating the shortest ride
min(fullyear_v2$ride_length_minutes,na.rm = TRUE)

## Assign summary and length to represent the mean, median, maximum and minimum
summary_stats <- summary(fullyear_v2$ride_length_minutes)
length_column <- length(fullyear_v2$ride_length_minutes)

print(length_column)
print(summary_stats[1])
print(summary_stats[3])
print(summary_stats[4])
print(summary_stats[6])
