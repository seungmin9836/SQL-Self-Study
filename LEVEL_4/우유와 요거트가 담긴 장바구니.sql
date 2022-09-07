-- [문제 1] 우유와 요거트가 담긴 장바구니
-- 데이터 분석 팀에서 우유와 요거트를 동시에 구입한 장바구니가 있는지 알아보려 합니다.
-- 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL 문을 작성해주세요.
-- 이때 결과는 장바구니의 아이디 순으로 나와야 합니다.

-- INTERSECT : 교집합

SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'Milk'
INTERSECT
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'Yogurt'

-- OR --

SELECT CART.CART_ID
FROM (
    SELECT CART_ID, NAME
    FROM CART_PRODUCTS
    GROUP BY CART_ID, NAME
    HAVING NAME IN ('Milk', 'Yogurt')
) AS CART
GROUP BY CART.CART_ID
HAVING COUNT(CART.CART_ID) >= 2
ORDER BY CART.CART_ID

-- OR --

SELECT DISTINCT A.CART_ID
FROM 
(
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Milk'
) A
INNER JOIN 
(
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt'
) B
ON A.CART_ID = B.CART_ID
ORDER BY A.CART_ID