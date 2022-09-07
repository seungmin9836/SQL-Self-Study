-- [문제 2] 입양 시각 구하기(2)
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려고 합니다.
-- 0시 부터 23시 까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 시간대 순으로 정렬해야 합니다.

SELECT HOUR, COUNT(B.DATETIME) AS COUNT
FROM (
    SELECT LEVEL-1 AS HOUR
    FROM DUAL
    CONNECT BY LEVEL <= 24
) A LEFT JOIN ANIMAL_OUTS B
ON A.HOUR = TO_CHAR(B.DATETIME, 'HH24')
GROUP BY HOUR
ORDER BY HOUR