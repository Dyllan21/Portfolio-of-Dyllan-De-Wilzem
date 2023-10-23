select * from tbl_Students
where IDX_Student =1

select * from [dbo].[tblSubjectsTaken]
where IDX_Students =1

select * from [dbo].[tbl_Students]
inner join [dbo].[tblSubjectsTaken]
on [dbo].[tblSubjectsTaken].[IDX_Student] =[dbo].[tbl_Students].[IDX_Student]
where [dbo].[tbl_Students].IDX_Student =1