USE SchoolDB

/***Top 3 Kids with More Lateness by Week***/
SELECT TOP 3
    s.FirstName, s.LastName, COUNT(l.LatenessID) AS LatenessCount
FROM
    Students s
JOIN
    Lateness l ON s.StudentID = l.StudentID
WHERE
    l.LatenessDate >= DATEADD(WEEK, -1, GETDATE())
GROUP BY
    s.FirstName, s.LastName
ORDER BY
    LatenessCount DESC;