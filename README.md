## About the project

The project revolves around the change of salaries for men after they are married!

I got inspired from Jasmin Jusufbegovic, a senior cx analyst, when he published his post titled:

**"Are you a single male and earning less?
Perhaps it's time to put a ring 💍on it for a bigger paycheck?"** on [LinkedIn](https://www.linkedin.com/posts/jasmin-jusufbegovic-560140210_statistics-regressionanysis-activity-7160658100033617922-6IFg?utm_source=share&utm_medium=member_desktop)! 

Where he clearly states that **paychecks are dependent on age and experience** how correct is that statement? Well, lets find out!

### Objectives

 * Comparing male salaries by experience
 * Comparing male salaries by age
 * Comparing max salaries
 
## Tools being used 

For this project we are going to use Salary Prediction dataset available on [Kaggle](https://www.kaggle.com/datasets/rkiattisak/salaly-prediction-for-beginer)

In this research I'm going to filter out the data by male gender and removing the age groups that do not have values which I will specify underneath each section.

### Male salaries by age

Now we are getting into the fun stuff, below is a scatterplot listing every single salary by age:

```{r 1st plot}
ggplot(data = datas, aes(x = Age, y = Salary)) +
  geom_point() + 
  labs(title = "Male salaries by age") 
```
![Graph 1](https://i.imgur.com/HhIgtmF.png)

While we can still make comments about this graph, lets get things better for everyone.

### Average Male Salaries by Age

We will have an easier time reading this graph below:

```{r}
ggplot(data = avgsal, aes(x = Age, y = avg_salary)) + 
  geom_line(linewidth = 1.3) +
  geom_point(size = 3) +
  labs(title = "Average male salaries by age", x = "*Age", y = "Average Salary", caption = "*Excluding ages 26, 31, 36" )
```
![Graph 2](https://i.imgur.com/68HJpDW.png)

We can see that there is a remarkable rise until age 39, after age 40 we can see another rise that lasts until age 52.

### Average Male Salaries by Experience

This will be a great comparison to start making some insights:

```{r experience}
ggplot(data = avgyr, aes(x = Years.of.Experience, y = avg_salary)) +
  geom_line(linewidth = 1.3) +
  geom_point(size = 3) + 
  labs(title = "Average male salaries by years in field", x = "*Years of Experience", y = "Average Salary", caption = "*Excluding years 6, 8")
```
![Graph 3](https://i.imgur.com/Uy0pmUj.png)

We can see a similarity between the experience graph alongside the age graph, while getting older mostly means you are getting more experience it is not always the case! Think of it like this: a 20 year old person will have 5 years of experience when 25 but a 25 year old person will have 0 years of experience in the age 25.

10 years in experience is where the rise stops which can be caused by numerous reasons which are not our concern right now.

### Max. Salaries by Age with Job Titles

In the following graph we will compare the max. salaries with job titles included:
![](https://i.hizliresim.com/t9ti3r2.png)


Where we can clearly see that after age 38 biggest earners are mostly managers which we can think that older the manager, bigger the paycheck! 

### Where is the marriage?

That is where Jasmin Jusufbegovic comes in providing us with this amazing graph:

![](https://github.com/YigitOker/Salary-vs-Age/blob/master/marriage.jpeg)

Since mid 30s, we can see that the wages start to rise alongside the rise in marriage.

## So after the marriage we earn more?

Not quite, we can see that since age 35 to 40, there is a significant rise in wage while the number drops at age 40.

Which is similar to the graph Jasmin provided for us. **However** average 9 year experienced man earns much more than men in their 30s.
A man starting in in age 20 with 9 year experience also provides this. 

Numbers in marriage start to go up alongside the age since 30. This scientifically proves what Jasmin said: 

**"Wages generally increase with age due to growing experience, and this happens whether a man is married or not."** it seems he was right.

He also mentioned something I agree with: 

**"Many men marry after achieving career stability, not before, which would suggest that higher wages "might" lead to marriage, not the other way around."** 

which can depend on other factors such as the number of people they provide for, cultural reasons and everything. This is possibly a topic that requires a research about marriage.

