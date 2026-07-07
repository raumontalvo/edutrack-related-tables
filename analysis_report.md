# EduTrack Data Audit Analysis Report

## Query 1: Every enrollment with student name, course title, and completion percentage

Result:
Returned 16 rows showing each enrollment, the student name, course title, and completion percentage.

## Query 2: Students who passed at least one course

Result:
Returned 6 rows showing students who passed a course, including their email and the course title.

## Query 3: Average completion percentage per instructor

Result:
Marta López had the highest average completion percentage at about 66.14%.
Carlos Vega averaged 40%.
Lucia Prades averaged 36.5%.
Pending assignment averaged 0%.
## Query 4: Students with no enrollments

Result:
Giulia Romano has no enrollments.

## Query 5: Courses with no enrollments

Result:
Email Campaigns (Marketing) has no enrollments.

## Query 6: Students enrolled in more than one course

Result:
Returned 7 students who are enrolled in more than one course.

## Query 7: Total revenue per category

Result:
Programming generated the highest total revenue at 409.93.
Data generated 179.97.
Design generated 169.96.
Marketing generated 59.98.

## Query 8: Number of students per instructor

Result:
Marta López has 7 enrolled students.
Carlos Vega has 5 enrolled students.
Lucia Prades has 2 enrolled students.
Pending assignment has 2 enrolled students.

## Query 9: Orphan enrollments (student_id)

Result:
No orphan student records were found. Every enrollment references a valid student.

## Query 10: Orphan enrollments (course_id)

Result:
No orphan course records were found. Every enrollment references a valid course.