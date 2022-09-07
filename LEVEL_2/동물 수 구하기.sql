-- [문제 6] 동물 수 구하기
-- 동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL문을 작성해주세요.

SELECT COUNT(*) COUNT
FROM ANIMAL_INS

-- 응용) 동물의 종류와 각 종류별 몇 마리 들어왔는지

SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS COUNT
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE