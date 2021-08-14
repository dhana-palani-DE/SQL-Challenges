/* New-Company challenge is from Hackerrank SQL Challenges. 
I have Provided the link to the problem description in this path https://www.hackerrank.com/challenges/the-company/problem */
select c.company_code, 
       c.founder,
       count(DISTINCT LM.Lead_Manager_Code) as [Lead_Manager_Code_Count],
       count(DISTINCT SM.senior_manager_code) as [Senior_Manager_Code_Count],
       count(DISTINCT M.manager_code) as [Manager_code_count],
       COUNT(DISTINCT E.employee_code) as [Employee_code_count]
from company C
INNER JOIN Lead_Manager LM ON (C.company_code = LM.company_code)
INNER JOIN Senior_Manager SM ON (c.company_code = SM.company_code and C.company_code = SM.company_code)
INNER JOIN Manager M ON (M.company_code = SM.company_code)
INNER JOIN Employee E on (E.company_code = M.company_code)
GROUP BY C.company_code,c.founder
ORDER by C.company_code;
