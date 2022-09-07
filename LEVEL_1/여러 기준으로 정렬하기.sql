-- [문제 9] 여러 기준으로 정렬하기
-- 동물 보호소에 드러온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL 문을 작성해주세요.
-- 단, 이름이 같은 동물 중에서 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.

SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC