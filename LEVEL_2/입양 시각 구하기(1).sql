-- [문제 7] 입양 시각 구하기(1)
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다.
-- 09:00 부터 19:59 까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 시간대 순으로 정렬해야 합니다.

SELECT HOUR, COUNT(*) AS COUNT
FROM (
    SELECT TO_NUMBER(DATETIME, 'HH24') AS HOUR
    FROM ANIMAL_INS
)
WHERE HOUR BETWEEN 9 AND 19
GROUP BY HOUR
ORDER BY HOUR