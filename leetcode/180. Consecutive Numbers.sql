/*180. Consecutive Numbers
Link for the problem -> https://leetcode.com/problems/consecutive-numbers/
*/

SELECT DISTINCT num as ConsecutiveNums
from (
SELECT num,LEAD(num) OVER(ORDER BY id) AS lead, LAG(num) OVER (ORDER BY id) AS lag
FROM logs) r
where num = lead and num = lag
