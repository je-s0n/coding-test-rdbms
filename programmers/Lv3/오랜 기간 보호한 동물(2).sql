SELECT 
    ai.ANIMAL_ID, ai.NAME
FROM ANIMAL_INS ai, ANIMAL_OUTS ao
WHERE ai.ANIMAL_ID = ao.ANIMAL_ID
ORDER BY ao.DATETIME - ai.DATETIME DESC
LIMIT 2;
