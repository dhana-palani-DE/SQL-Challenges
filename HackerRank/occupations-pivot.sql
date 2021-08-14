/* provided the hackerranker problem challenge link - https://www.hackerrank.com/challenges/occupations/problem
*/

SELECT   
    [Doctor] AS 'Doctor' ,  
    [Professor] AS 'Professor',  
    [Singer] AS 'Singer',
    [Actor]  AS 'Actor'
FROM   (select ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) [RowNumber],* from occupations) ocp
PIVOT  
( 
    MAX(Name)
FOR  [Occupation]   
    IN ( [Doctor], [Professor], [Singer] ,[Actor])  
) AS  pvtocp
