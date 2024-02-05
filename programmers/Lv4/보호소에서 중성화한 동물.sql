SELECT 
  ai.ANIMAL_ID, ai.ANIMAL_TYPE, ai.NAME
FROM ANIMAL_INS ai, ANIMAL_OUTS ao
WHERE ai.ANIMAL_ID = ao.ANIMAL_ID 
    AND ai.SEX_UPON_INTAKE like "Intact%"
    AND (ao.SEX_UPON_OUTCOME like "Spayed%"
         OR ao.SEX_UPON_OUTCOME like "Neutered%")
