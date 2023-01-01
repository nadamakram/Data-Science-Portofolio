SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs as a 
JOIN Logs as b ON a.id = b.id + 1 AND a.num = b.num
JOIN Logs as c ON b.id = c.id + 1 AND c.num = b.num