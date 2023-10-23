select count(idx_student) as [TotalnoStudents],
(select count(idx_student) from [dbo].[tbl_Students] where [Enabled] =1) as [ActivenoStudents] ,
(select count(idx_student) from [dbo].[tbl_Students] where enabled =0) as [inactivenoStudents]
from [dbo].[tbl_Students]
