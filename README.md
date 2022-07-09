# Pewlett Hackard Analysis

## Project Overview
* The purpose of this analysis is to assist the Human Resouces department at Pewlett Hackard in determining the number of employees who are becoming eligible for retirement. This "Silver Tsunami" could potentially cripple the company and they would like to start a mentorship program in order to train the next line of employees to fill the void that will be left by the retiring employees. Human Resouces would also like to determine employees who would be eligible for this new mentorship program that is about to begin. 

## Resources
* Data source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
* Software: PostgreSQL 11.16

## Results
* The vast majority of the retirement eligible employees are Senior Engineers and Senior Staff. ![ret_title](https://github.com/BryantKlewer/Pewlett_Hackard_Analysis/blob/main/screen%20shots/ret_title.png)
* The majority of available mentorees are Staff and Engineers.
* There are no managers available to be mentored. 
![count_ment_title](https://github.com/BryantKlewer/Pewlett_Hackard_Analysis/blob/main/screen%20shots/count_ment_title.png)
* There are far more employees who are retirement eligible than there are available for mentorship.

## Summary
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    * As the tsunami of retirements begin, there will be a total of 72,458 employees who end up retiring from Pewlett Hackard. 
    ![sum_ret_emp](https://github.com/BryantKlewer/Pewlett_Hackard_Analysis/blob/main/screen%20shots/sum_ret_emp.png)
2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    * There is more than enough qulaified, retirement-ready employees in each department to mentor the next generation of employees. The problem is that there is not enough employees to mentor, only 1,549 compared to the 72,458 retiring. It would be suggested to start an active recruitment campaign in order to hire more employees in order to fill what is about to be a vast number of vancancies. ![count_ment_elig](https://github.com/BryantKlewer/Pewlett_Hackard_Analysis/blob/main/screen%20shots/count_ment_elig.png)
