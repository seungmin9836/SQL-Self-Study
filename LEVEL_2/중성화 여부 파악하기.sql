-- [문제 2] 중성화 여부 파악하기
-- 보호소의 동물이 중성화되었는지 아닌지 파악하려 합니다.
-- 중성화된 동물은  SEX_UPON_INTAKE 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다.

SELECT ANIMAL_ID
    , NAME
    , CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' OR
                SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
           ELSE 'X'
      END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID