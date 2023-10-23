select txtFirstName, txtSurname,txtSubject,decCost,iif(bitPaid =1, 'Paid', 'NotPaid') as Paid

from [dbo].[tbl_Students] a
inner join [dbo].[tblSubjectTaken] b on a.IDX_Student = b.[IDX_Student]
inner join [dbo].[tblSubjects] c on b.[IDX_Subject] = c.[IDX_Subject]
inner join tbl_SubjectPaid d on b.[IDX_Subjects_Taken] = d.IDX_SubjectTaken

select txtFirstName,txtSurname,sum(decCost) as AmountDue,sum(iif(bitPaid =1, decCost, 0)) as Moneypaid,sum(decCost-(iif(bitPaid =1, decCost, 0))) as Outstanding

from [dbo].[tblSubjects] 
Left join [dbo].[tblSubjectTaken] on [dbo].[tblSubjects].IDX_Subject = [dbo].[tblSubjects].IDX_Subject
Left join [dbo].[tbl_Students] on [dbo].[tbl_Students].IDX_Student = [dbo].[tbl_Students].IDX_Student
inner join [dbo].[tbl_SubjectPaid] on [dbo].[tblSubjectTaken].IDX_Subjects_Taken = [dbo].[tblSubjectTaken].IDX_Subjects_Taken

group by txtFirstName,txtSurname