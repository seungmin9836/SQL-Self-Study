-- [문제 3] 최솟값 구하기
-- 동물 보호소에 가장 먼저 들어온 동물은 언제 들어왔는지 조회하는 SQL문을 작성해주세요.

SELECT MIN(DATETIME)
FROM ANIMAL_INS

-- OR --

SELECT DATETIME
FROM ANIMAL_INS
ORDER BY DATETIME LIMIT 1