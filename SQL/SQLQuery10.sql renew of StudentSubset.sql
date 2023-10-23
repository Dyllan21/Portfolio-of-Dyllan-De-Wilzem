select count(DISTINCT (a.IDX_Student)) as noStudents 
from [dbo].[vw_StudentSubset] a
left outer join [dbo].[tbl_Students] b on b.IDX_Student = a.IDX_Student
where b.Enabled =1

select avg(subjectsmarks) as Average  from [dbo].[vw_StudentSubset] a
where (a.SubjectsMarks) is not null

select count(subjectsmarks) as NotWritten from [dbo].[vw_StudentSubset] a
where (a.SubjectsMarks) is null

select count(subjectsmarks) as Written from [dbo].[vw_StudentSubset] a
where (a.SubjectsMarks) is not null

select count(a.Subject) as Passed from [dbo].[vw_StudentSubset] a
where (a.SubjectsMarks) >= a.passmark

select count(a.Subject) as Failed from [dbo].[vw_StudentSubset] a
where (a.SubjectsMarks) < a.passmark

select avg(IntAge) as AverageAge from [dbo].[vw_StudentSubset] a
where (a.intage) is not null 

select intage from [dbo].[vw_StudentSubset]
where idx_student in (select distinct(idx_student) from [dbo].[vw_StudentSubset])
