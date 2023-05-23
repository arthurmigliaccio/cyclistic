## Assign and aggregate to compare the mean, median, minium and maximum between member and casual riders
mean_ride_length <- aggregate(fullyear_v2$ride_length_minutes ~ fullyear_v2$member_casual, FUN = mean)

median_ride_length <- aggregate(fullyear_v2$ride_length_minutes ~ fullyear_v2$member_casual, FUN = median)

min_ride_length <- aggregate(fullyear_v2$ride_length_minutes ~ fullyear_v2$member_casual, FUN = min)

max_ride_length <- aggregate(fullyear_v2$ride_length_minutes ~ fullyear_v2$member_casual, FUN = max)

print(mean_ride_length)
print(median_ride_length)
print(min_ride_length)
print(max_ride_length)
