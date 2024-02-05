SELECT 
    ii.INGREDIENT_TYPE,
    SUM(fh.TOTAL_ORDER) 'TOTAL_ORDER' 
FROM FIRST_HALF fh, ICECREAM_INFO ii
WHERE fh.FLAVOR = ii.FLAVOR
GROUP BY ii.INGREDIENT_TYPE
