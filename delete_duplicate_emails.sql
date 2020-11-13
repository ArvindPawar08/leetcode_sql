/* SQL Server solution
WITH cte AS (
    SELECT 
        Email, 
        ROW_NUMBER() OVER (
            PARTITION BY 
                Email
            ORDER BY 
                Email
        ) row_num
     FROM 
        Person
)
DELETE FROM cte
WHERE row_num > 1;
*/


/*MySQL solution*/
DELETE FROM Person WHERE Id NOT IN
(SELECT * FROM (SELECT MIN(Id) FROM PERSON GROUP BY Email) as p);