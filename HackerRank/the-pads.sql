/* Provided the Hacker rank problem challenge link https://www.hackerrank.com/challenges/the-pads/problem

*/


SELECT NAME + '(' + LEFT(OCCUPATION,1) + ')' AS 'FORMATTED_TEXT'
FROM OCCUPATIONS
ORDER BY NAME;
SELECT 'There are a total of' +' ' + CAST(COUNT(OCCUPATION) AS VARCHAR(10)) + ' ' + lower(occupation)+ 's.'  AS 'FORMATTED_TEXT'
FROM OCCUPATIONS OCC
GROUP BY OCC.OCCUPATION
ORDER BY COUNT(OCCUPATION),OCCUPATION
