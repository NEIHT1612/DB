with t as(
	select courseId, count(code) as NumberOfAssessments
	from Courses
	join Assessments on Courses.id = Assessments.courseId
	group by courseId
)
select courseId, code, title, count(code) as NumberOfAssessments 
from Courses
join Assessments on Courses.id = Assessments.courseId
group by courseId, code, title
having count(code) = (
	select top 1 NumberOfAssessments
	from t
	order by NumberOfAssessments
)

