select a.[IDX_Student],
[txtFirstName],
[txtSurname],
[Subject],
[SubjectsMarks],
(cast([SubjectsMarks] as decimal (8,2))/120)*100 as percentpass
from [dbo].[vw_StudentSubjectData] a