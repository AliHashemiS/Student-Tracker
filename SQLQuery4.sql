USE SchoolDB

/***City with Most Students Late***/
SELECT TOP 1
    a.City, COUNT(l.LatenessID) AS LatenessCount
FROM
    Students s
JOIN
    Addresses a ON s.AddressID = a.AddressID
JOIN
    Lateness l ON s.StudentID = l.StudentID
GROUP BY
    a.City
ORDER BY
    LatenessCount DESC;