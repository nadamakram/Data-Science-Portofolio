WITH count_rows_table AS
(
SELECT COUNT(*) AS counts
FROM Seat
)

SELECT 
CASE 
    WHEN (id%2) = 1 AND id != (SELECT counts FROM count_rows_table) THEN id + 1
    WHEN (id%2) = 1 AND id = (SELECT counts FROM count_rows_table) THEN id
    WHEN (id%2) = 0 THEN id - 1
END AS id, student
FROM Seat
order by id 