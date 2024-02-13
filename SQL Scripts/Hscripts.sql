-- Inserts
INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (1, 1, 1, 1);

INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (3, 2, 6, 400);

-- Updates
UPDATE food_details
SET protein = 5, carb = 4
WHERE id = 1;

UPDATE food_details
SET protein = 5, carb = 4
WHERE id = 2;

-- Delete
DELETE FROM food_details WHERE id = 4;

-- Simple Select
SELECT protein FROM food_details;

-- Joins
SELECT food_details.protein
FROM food_details
INNER JOIN exercise_details ON food_details.id = exercise_details.id;

SELECT food_details.carb
FROM food_details
INNER JOIN exercise_details ON food_details.id = exercise_details.id;

-- Summary
SELECT AVG(protein)
FROM food_details
WHERE protein > 0;

SELECT AVG(carb)
FROM food_details
WHERE carb <= 5;

-- Mutli-Table Query


-- Choice Queries
INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (6, 7, 5, 6);

INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (3, 3, 3, 3);