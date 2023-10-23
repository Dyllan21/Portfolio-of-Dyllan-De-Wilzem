select count(DISTINCT (a.IDX_Student)) as noStudents 
from [dbo].[vw_StudentSubset] a
left outer join [dbo].[tbl_Students] b on b.IDX_Student = a.IDX_Student
where b.Enabled =1