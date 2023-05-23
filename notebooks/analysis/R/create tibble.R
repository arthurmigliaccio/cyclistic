## Ordering the days of the week in vector
fullyear_v2$day_of_week <- ordered(fullyear_v2$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

## Comparing the average ride length between casuals and members by day of the week
aggregate(fullyear_v2$ride_length_minutes ~ fullyear_v2$member_casual + fullyear_v2$day_of_week, FUN = mean)

## Creating new variable "weekday" extracting the day of the week from "started_at". Group data by "member_casual" and "weekday", calculating each group's number of rides and average ride duration. Sorted by "member_casual" and in descending order by "average_duration".
fullyear_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  
  group_by(member_casual, weekday) %>%  
  summarise(number_of_rides = n(),
            average_duration = mean(ride_length_minutes)) %>%
  arrange(member_casual, desc(average_duration))
