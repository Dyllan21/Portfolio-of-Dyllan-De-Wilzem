select a.IDX_Student,a.txtFirstName,a.txtSurname,a.dtDOB,a.intAge,a.txtIDno,
a.txtEMail,c.Subject,c.Description,c.Cost,c.Passmark,d.SubjectsMarks,e.Paid


from [dbo].[tbl_Students] a
Left join [dbo].[tblSubjectsTaken] b on a.[IDX_Student] = b.IDX_Student
Left join [dbo].[tblSubjects] c on b.[IDX_Subjects] = c.IDX_Subjects
left join [dbo].[tbl_Marks] d on b.IDX_Subjects_Taken = d.IDX_SubjectTaken
left join [dbo].[tblSubjectPaid] e on b.IDX_Subjects_Taken = e.IDX_SubjectTaken