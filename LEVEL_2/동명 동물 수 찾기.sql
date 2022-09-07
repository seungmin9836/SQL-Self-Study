-- [문제 4] 동명 동물 수 찾기
-- 동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.

SELECT NAME, COUNT(NAME)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME 
HAVING COUNT(NAME) >= 2
ORDER BY NAME

-- OR --

WITH TEMP_TABLE AS (
    SELECT NAME. COUNT(NAME) AS COUNT
    FROM ANIMAL_INS
    WHERE NAME IS NOT NULL
    GROUP BY NAME
    ORDER BY NAME
)
SELECT * FROM TEMP_TABLE
WHERE COUNT >= 2