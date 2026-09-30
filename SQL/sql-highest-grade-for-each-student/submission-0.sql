-- Write your query below
WITH RNK AS (
            SELECT 
            student_id,
            exam_id,
            score,
            ROW_NUMBER() OVER(PARTITION BY student_id ORDER BY score DESC , 
            exam_id ASC) as rnk
            FROM exam_results
)

SELECT student_id, exam_id, score 
from RNK 
where rnk=1



