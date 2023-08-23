USE SchoolDB

/***Top 2 Siblings with Lateness by Week***/
SELECT TOP 2
    s.FirstName, s.LastName, COUNT(l.LatenessID) AS LatenessCount
FROM
    Students s
JOIN
    Lateness l ON s.StudentID = l.StudentID
WHERE
    s.SiblingID IS NOT NULL
    AND l.LatenessDate >= DATEADD(WEEK, -1, GETDATE())
GROUP BY
    s.FirstName, s.LastName
ORDER BY
    LatenessCount DESC;