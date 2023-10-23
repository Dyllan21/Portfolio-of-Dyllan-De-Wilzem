use Students

select a.txtFirstName,a.txtSurname,a.txtIDno,
iif(c.[Subject] is null,'No Subject Selected',c.subject) as Subjects,
iif(d.SubjectsMarks is null,'No Test',cast(d.SubjectsMarks as nvarchar)) as SubjectsMarks,
iif(d.SubjectsMarks is null,'No Test',iif(c.passmark >d.subjectsmarks,'Fail','Pass')) as pass
from tbl_Students a

left outer join tblSubjectsTaken b on b.IDX_Student = a.IDX_Student
left outer join tblSubjects c on b.IDX_Subjects = c.IDX_Subjects
left outer join tbl_Marks d on b.IDX_Subjects_Taken = d.IDX_SubjectTaken

where a.Enabled = 'True'
