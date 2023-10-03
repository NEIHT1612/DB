create procedure P1 @studentId int, @coursed int, @numberOfEnrollmentTimes int output
as
	select @numberOfEnrollmentTimes = count(enrollId)
	from enroll
	where enroll.studentId = @studentId and enroll.courseId = @coursed

