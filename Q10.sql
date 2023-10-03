insert into Departments(Name, Code)
values('Business Administration',(select Code from Departments where Departments.Name='Business Administration'))

insert into Students(id, name, birthdate,gender, department)
values (110,'Mary Jane','2001/12/5','Female', (select Code from Departments where Departments.Name = 'Business Administration'))

