SELECT 
  ORDER_ID, PRODUCT_ID, date_format(OUT_DATE, '%Y-%m-%d') 'OUT_DATE', 
  CASE
      WHEN date_format(OUT_DATE, '%Y-%m-%d') > '2022-05-01' THEN '출고대기'
      WHEN date_format(OUT_DATE, '%Y-%m-%d') <= '2022-05-01' THEN '출고완료'
      ELSE '출고미정'
  END '출고여부'
FROM FOOD_ORDER
