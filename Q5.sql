select Courses.id as CourseId, Courses.code, title, isnull(count(distinct studentId),0) as NumberOfEnrolledStudents
from Courses left join enroll on Courses.id = enroll.courseId
join semesters on enroll.semesterId = semesters.id
where year in (2019)
group by Courses.id, Courses.code, title
