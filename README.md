# Pewlett Hackard Analysis

## Project Overview


### Resources
- Data/departments.csv
-     /dept_manager.csv
-     /employees.csv
-     /dept_emp.csv
-     /titles.csv
-     /salaries.csv
- Software: Postgres, pgAdmin 5.7


## Challenge Overview
The challenge is meant to identify the number of current employees eligible for retirement, and sort and county by title.

### Challenge Purpose
1. Data table listing all titles with retirement-eligible employees
	- Data/retirement_titles.csv
	-     /unqiue_titles.csv 
	-     /retiring_titles.csv
2. Data table listing current employees suitable for the mentorship program
- Data/mentorship_eligibility.csv

## Results
1. There are 90, 398 current employees at Pewlett Hackard who were born 1952-1955, and who will be eligible for retirement.
2. Senior staff and engineers will have the highest number of retiring employees at more than 28,000 each.
3. There is a large number of current employees eligible for mentoring with the staff and engineer titles. This indicates that these employees could be promoted to senior positions, with their mentees filling in their former positions.
4. There are a total of 1,549 qualified mentors with the current mentor requirements.

![retiring by title](https://user-images.githubusercontent.com/90879979/140676401-a6b59e31-0b64-4b57-ac92-d1b15fa72464.png)

![mentees needed](https://user-images.githubusercontent.com/90879979/140676399-e51b2fbd-0b09-45bc-b18f-ced9c16bdd3f.png)


## Summary
As Pewlett Hackard currently stands, they are not ready to handle and adapt to the "Silver Tsunami" with only internal promotions. While the mentorship program is certainly a great step in preparing, the ratio of available mentors vs the amount of future empty roles is not realistic. At minimum, each mentor would need to have at least 29 mentees, with 94 as the max. This is an unrealistic burden to put on those mentors.

One alternative is to make the requirements to be a mentor less strict through widening the window of age. Surely someone who is born in 1966 is similarly qualified to the group of existing mentors who were born in 1965. This would bring down the mentor/mentee ratio and make the program more personal. 

Ultimately, one big solution to this "Silver Tsunami" is to invest heavily in outside recruitment to hire high quality, experienced candidates for these roles that will open in the future. Not only will this fill positions, but it should hopefully add to the pool of available mentors. Furthermore, Pewlett Hackard should also focus on employee-retention to make sure that employees are willing and able to participate in internal promotions.
