SELECT 
    ai.ANIMAL_ID, ao.NAME
FROM ANIMAL_INS ai, ANIMAL_OUTS ao
WHERE ai.ANIMAL_ID = ao.ANIMAL_ID 
    and ai.DATETIME > ao.DATETIME
order by ai.DATETIME
