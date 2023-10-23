select txtFirstName,txtSurname,txtSubject
,(decCost) as AmountDue
,(iif(bitPaid =1, decCost, 0)) as Moneypaid
,(decCost-(iif(bitPaid =1, decCost, 0))) as Outstanding

from [dbo].[tblSubjects] 
Left join [dbo].[tblSubjectTaken] on [dbo].[tblSubjects].IDX_Subject = [dbo].[tblSubjects].IDX_Subject
Left join [dbo].[tbl_Students] on [dbo].[tbl_Students].IDX_Student = [dbo].[tbl_Students].IDX_Student
inner join [dbo].[tbl_SubjectPaid] on [dbo].[tblSubjectTaken].IDX_Subjects_Taken = [dbo].[tblSubjectTaken].IDX_Subjects_Taken

group by txtFirstName,txtSurname