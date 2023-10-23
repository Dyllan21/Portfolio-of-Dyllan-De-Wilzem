select * from tbl_Students
where IDX_Students =1


select * from [dbo].[tblSubjectTaken]
where IDX_Students =1

select * from [dbo].[tbl_Students]
inner join [dbo].[tblSubjectTaken]
on [dbo].[tblSubjectTaken].[IDX_Student] =[dbo].[tbl_Students].[IDX_Student]
where [dbo].[tbl_Students].IDX_Student =1