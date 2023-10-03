select Students.id as studentId, Students.name as StudentName, department, semesters.code as SemesterCode, year, Courses.title as CourseTitle
from Students
join enroll on Students.id = enroll.studentId
join Courses on enroll.courseId = Courses.id
join semesters on enroll.semesterId = semesters.id
where Courses.title = 'Operating Systems'
order by year asc, SemesterCode asc, studentId asc