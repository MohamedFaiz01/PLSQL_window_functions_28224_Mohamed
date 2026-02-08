# PLSQL_window_functions_28224_Mohamed
**Business Context**

The activities of the university regarding admissions in different faculties.
The department which oversees student performance, course demand and student outreach is academic affairs.
The organization is part of higher education sector.

**Data Challenge**

Data distribution of enrollment and academic performance is shown in several tables.
With the increase in data, it is hard to track popular courses, enrollments, and changes in student performance over a period of time.

**Expected OUtcome.**

The analysis aims to rank courses in order of enrolments, monitor changes from one semester to another, and segment students based on academic performance for academic planning.
## Success Criteria
1.To determine which courses are in high demand, use the RANK() window function to rank them by total student enrollment each semester.

2.To examine long-term enrollment growth, compute cumulative enrollment over time for each faculty using SUM() OVER().

3.To identify rising or falling trends, use the LAG() function to measure changes in course enrollment from semester to semester.

4.Use the NTILE(4) window function to divide students into four performance groups according to their average grades.

5.To smooth short-term fluctuations, use AVG() OVER() to calculate a moving average of course enrollment over successive semesters.

## Database schema design 
<img width="1536" height="1024" alt="ER diagram" src="https://github.com/user-attachments/assets/b70d1483-3ff1-44a3-bdf6-cc99b0e12099" />

