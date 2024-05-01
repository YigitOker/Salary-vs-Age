library(tidyverse)
library(dplyr)
library(lubridate)
library(readr)
library(tidyr)
library(ggplot2)
datas <- read.csv("C:/Users/yigit/Downloads/archive (2)/Salary_Data.csv")
datas <- datas %>% filter(Gender == "Male")

ggplot(data = datas, aes(x = Age, y = Salary)) +
  geom_point() + 
  labs(title = "Male salaries by age") 

avgsal <- datas %>% 
  group_by(Age) %>% 
  summarize(avg_salary = mean(Salary)) %>% 
  filter(Age != 26, Age != 31, Age != 36) %>% 
  
  ggplot(data = avgsal, aes(x = Age, y = avg_salary)) + 
  geom_line(linewidth = 1.3) +
  labs(title = "Average male salaries by age", x = "*Age", y = "Average Salary", caption = "*Excluding ages 26, 31, 36" )

avgyr <- datas %>% 
  group_by(Years.of.Experience) %>% 
  summarize(avg_salary = mean(Salary)) %>% 
  filter(Years.of.Experience != 6, Years.of.Experience != 8)

ggplot(data = avgyr, aes(x = Years.of.Experience, y = avg_salary)) +
  geom_line(linewidth = 1.3) +
  labs(title = "Average male salaries by years in field", x = "*Years of Experience", y = "Average Salary", caption = "*Excluding years 6, 8")

