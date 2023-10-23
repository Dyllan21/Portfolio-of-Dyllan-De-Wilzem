use Students

Select txtFirstName,txtSurname,SUM(subject.Cost) as Total_amount,SUM(IIF(Paid.[Paid]=1,subject.Cost,0)) as Amount_Paid,
 SUM(subject.Cost -(iif(paid.[Paid] =1, subject.Cost,0))) as Amount_Due
from tbl_Students student


inner join tblSubjectsTaken taken on taken.IDX_Student = student.IDX_Student
inner join tblSubjects subject on subject.IDX_Subjects = taken.IDX_Subjects
inner join tblSubjectPaid Paid on Paid.IDX_SubjectTaken = taken.IDX_SubjectTaken
 
-- where txtFisrt_Name = 'johan' -- where is used before group by and for string/char specificly

group by txtFirstName,txtSurname

Having SUM(subject.Cost) = 55455.00  -- Having is used after group by and for math specificly