-- [문제 3] 최댓값 구하기
-- 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.
SELECT MAX(DATETIME)
FROM ANIMAL_INS