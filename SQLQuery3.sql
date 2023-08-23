USE SchoolDB

/***Get Parent Information by Student***/
SELECT
    s.FirstName AS StudentFirstName, s.LastName AS StudentLastName,
    p.FirstName AS ParentFirstName, p.LastName AS ParentLastName,
    p.ContactNumber, p.Job
FROM
    Students s
JOIN
    Parents p ON s.LastName = p.LastName
WHERE
    s.StudentID = 123; -- Replace with the actual StudentID