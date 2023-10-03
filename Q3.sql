select Assessments.id as AssessmentId, type, name, [percent], title as CourseTitle
from Assessments
join Courses on Assessments.courseId = Courses.id
where title = 'Introduction to Databases'