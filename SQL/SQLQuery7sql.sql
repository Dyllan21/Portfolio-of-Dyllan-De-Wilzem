use Students

select txtFirstName, txtSurname, txtSubject, decCost

from [dbo].[tbl_Students] a

inner join [dbo].[tblSubjectTaken] b on a.IDX_Student = b.[IDX_Student]
inner join [dbo].[tblSubjects] c on b.[IDX_Subject] = c.[IDX_Subject]
inner join tbl_SubjectPaid d on b.[IDX_Subjects_Taken] = d.IDX_SubjectTaken







