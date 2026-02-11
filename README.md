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

**SQL scripts**
Table Creation

![Screen2](https://github.com/user-attachments/assets/8fabb286-a23f-4f82-9f3a-86504b3efe49)

**Part A — SQL JOINs**
<img width="471" height="252" alt="Screenshot 2026-02-11 171410" src="https://github.com/user-attachments/assets/3f6da124-532b-46a5-bfd9-cbca6bcfcfbd" />

  
  **Interpretation**

This query retrieves all valid student enrollments with their courses, semester, and grades. Only matching records across all tables are displayed.

**LEFT JOIN**
<img width="459" height="242" alt="image" src="https://github.com/user-attachments/assets/6160c7ab-3bbd-4913-8788-2d4eb1b371b5" />

 **Interpretation**
 This query shows all students, including those who are not enrolled in any course. Students without enrollment will have NULL values in course and grade columns.

 **RIGHT JOIN**
 <img width="424" height="227" alt="image" src="https://github.com/user-attachments/assets/d1a2aa9e-3bcf-41c6-bf32-f9bf02fe32b5" />

 **Interpretation**
 This query displays all courses, including those without enrolled students. Courses without enrollment will show NULL student names and grades.

 **FULL OUTER JOIN**
 <img width="411" height="228" alt="image" src="https://github.com/user-attachments/assets/1b6cad9b-9698-4136-8a06-4f64ddf40db2" />

 **Interpretation**
 This query returns all students and all courses regardless of enrollment status. It provides a complete overview of the academic records.

 **GROUP BY**
 <img width="403" height="190" alt="image" src="https://github.com/user-attachments/assets/5e53e54d-7553-4d0f-af02-027a482255fd" />

 **Interpretation**
 This query calculates the total number of students enrolled in each course, including courses with zero enrollment.
 
 **HAVING**
 <img width="411" height="177" alt="image" src="https://github.com/user-attachments/assets/c837378b-767b-4538-8277-ce5929de23fa" />

 **Interpretation**
 This query filters and displays only courses with more than two enrolled students.

## Part B — WINDOW FUNCTIONS
**1.ROW_NUMBER()**
<img width="366" height="252" alt="image" src="https://github.com/user-attachments/assets/d727831f-8312-41cb-a087-02df3d28bd5d" />

**Interpretation**

This query ranks students within each course based on their grades. Each student receives a unique position number.

**2.RANK()**
<img width="391" height="238" alt="image" src="https://github.com/user-attachments/assets/ca22785a-a882-4cb7-8422-ca479a7d3061" />
**Interpretation**

This query ranks students by grade within each course. Students with equal grades receive the same rank.

**DENSE_RANK()**
<img width="426" height="243" alt="image" src="https://github.com/user-attachments/assets/c7899f30-4fd3-4fc3-921d-8df3e9d3f63a" />

**Interpretation**
This query assigns ranking positions without gaps when grades are tied.

**NTILE(4)**
<img width="438" height="239" alt="image" src="https://github.com/user-attachments/assets/11f6ab7b-0bff-494b-9f2d-c2e11818eb2e" />

**Interpretation**

This query segments students into four performance categories within each course.
**AVG() OVER()**
<img width="376" height="221" alt="image" src="https://github.com/user-attachments/assets/146ae031-6bf9-43ec-88c8-8b6c8280140e" />

**Interpretation**
This query calculates the average grade per course and displays it alongside each student's grade.
**SUM() OVER()**
<img width="392" height="248" alt="image" src="https://github.com/user-attachments/assets/8278dd75-2c26-48b6-935f-2d911214e3b3" />

**LAG()**
<img width="399" height="251" alt="image" src="https://github.com/user-attachments/assets/4b4011a1-9dc8-42ab-b1e8-f74e4aff59cf" />
**LEAD()**
<img width="363" height="242" alt="image" src="https://github.com/user-attachments/assets/63b9c60c-62a8-40a2-b291-346a4935aa44" />

## Results Analysis
**Descriptive Analysis (What happened?**)
The analysis shows variation in student performance across different courses and semesters. Some courses have consistently high enrollment numbers, while others attract fewer students. Ranking functions reveal top-performing students within each course, and NTILE segmentation identifies performance distribution among students.
**Diagnostic Analysis (Why did it happen?)**
The differences in enrollment may be influenced by course popularity, faculty demand, or academic difficulty. Performance variation could be related to student preparation levels, course complexity, or teaching methods. Trends identified using LAG and running totals suggest that certain semesters experienced higher academic engagement.
**Prescriptive Analysis (What should be done?)**
The university should consider allocating more resources to high-demand courses and reviewing low-enrollment courses for improvement. Academic support programs may be introduced for lower-performing student groups identified through segmentation. Continuous monitoring using SQL analytics can improve academic planning and decision-making.
## Conclusion
This project demonstrates the practical application of SQL JOINs and window functions in analyzing university enrollment and academic performance data. The database structure and analytical queries provide meaningful insights that support strategic academic planning.

## Academic Integrity Statement
All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation.

## References
1.Oracle Corporation. (2023). Oracle Database SQL Language Reference. Retrieved from https://docs.oracle.com

2.PostgreSQL Global Development Group. (2023). PostgreSQL Documentation: Window Functions. Retrieved from https://www.postgresql.org/docs

3.Silberschatz, A., Korth, H. F., & Sudarshan, S. (2019). Database System Concepts (7th ed.). McGraw-Hill Education.

4.Elmasri, R., & Navathe, S. B. (2016). Fundamentals of Database Systems (7th ed.). Pearson.
