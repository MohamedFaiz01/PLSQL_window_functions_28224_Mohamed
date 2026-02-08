-- Students
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    faculty VARCHAR(50),
    enrollment_year INTEGER
);

-- Courses
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    faculty VARCHAR(50),
    credit_hours INTEGER
);

-- Semesters
CREATE TABLE Semesters (
    semester_id SERIAL PRIMARY KEY,
    semester_name VARCHAR(50),
    start_date DATE,
    end_date DATE
);

-- Enrollments
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES Students(student_id),
    course_id INTEGER REFERENCES Courses(course_id),
    semester_id INTEGER REFERENCES Semesters(semester_id),
    grade NUMERIC(4,2)
);
