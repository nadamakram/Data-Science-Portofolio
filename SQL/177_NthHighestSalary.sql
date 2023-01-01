CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      WITH rank_table AS
      (
      SELECT * , 
      dense_rank () over(order by salary desc) as rnk  
      FROM Employee
      )
    
    SELECT distinct salary 
    FROM rank_table
    WHERE rnk = N

  );
END