-- Query benchmark check

SELECT 
  COUNT(*) AS count
FROM @vocabDatabaseSchema.concept AS c1
JOIN @vocabDatabaseSchema.concept_relationship AS cr
  ON c1.concept_id = concept_id_1
  AND cr.invalid_reason IS NULL
  AND cr.relationship_id = 'Maps to'
JOIN @vocabDatabaseSchema.concept c2
  ON cr.concept_id_2 = c2.concept_id
  AND c2.invalid_reason IS NULL
;
