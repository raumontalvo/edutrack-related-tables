-- Query 1: List every enrollment with student name, course title, and completion percentage
SELECT
  students.name,
  courses.title,
  enrollments.completion_percentage
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id;

-- Query 2: Students who passed at least one course, with course title
SELECT
  students.name,
  students.email,
  courses.title
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id
WHERE enrollments.passed = TRUE;

-- Query 3: Average completion percentage per instructor
SELECT
  courses.instructor_name,
  AVG(enrollments.completion_percentage) AS average_completion
FROM enrollments
JOIN courses ON enrollments.course_id = courses.id
GROUP BY courses.instructor_name
ORDER BY average_completion DESC;

-- Query 4: Students with no enrollments
SELECT
  students.name,
  students.email
FROM students
LEFT JOIN enrollments ON students.id = enrollments.student_id
WHERE enrollments.id IS NULL;

-- Query 5: Courses with no enrollments
SELECT
  courses.title,
  courses.category
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
WHERE enrollments.id IS NULL;

-- Query 6: Students enrolled in more than one course
SELECT
    students.name,
    COUNT(enrollments.id) AS course_count
FROM students
JOIN enrollments ON students.id = enrollments.student_id
GROUP BY students.name
HAVING COUNT(enrollments.id) > 1;

-- Query 7: Total revenue per category using courses.monthly_fee
SELECT
    courses.category,
    SUM(courses.monthly_fee) AS total_revenue
FROM enrollments
JOIN courses ON enrollments.course_id = courses.id
GROUP BY courses.category
ORDER BY total_revenue DESC;

-- Query 8: Instructor with number of students currently enrolled
SELECT
    courses.instructor_name,
    COUNT(enrollments.id) AS student_count
FROM courses
JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY student_count DESC;

-- Query 9: Orphan enrollments where student_id does not match students.id
SELECT
    enrollments.id,
    enrollments.student_id
FROM enrollments
LEFT JOIN students ON enrollments.student_id = students.id
WHERE students.id IS NULL;
-- Query 10: Orphan enrollments where course_id does not match courses.id
SELECT
    enrollments.id,
    enrollments.course_id
FROM enrollments
LEFT JOIN courses ON enrollments.course_id = courses.id
WHERE courses.id IS NULL;