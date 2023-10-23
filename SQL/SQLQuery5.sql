use Students

select a.txtFirstName,a.txtSurname,a.txtIDno,
iif(c.[txtSubject] is null,'No Subject Selected',c.txtsubject) as Subjects,
iif(d.intSubjectMarks is null,'No Test',cast(d.intSubjectMarks as nvarchar)) as SubjectMarks,
iif(d.intSubjectMarks is null,'No Test',iif(c.[intPassmark%] >d.[intSubjectMarks],'Fail','Pass')) as pass

from [dbo].[tbl_Students] a

left outer join tblSubjectTaken b on b.IDX_Student = a.IDX_Student
left outer join tblSubjects c on b.IDX_Subject = c.IDX_Subject
left outer join tblMarks d on b.IDX_Subjects_Taken = d.IDX_SubjectTaken

where a.Enabled = 'True'

