-- populating food items
INSERT INTO food_data (food_name)
VALUES (apple);

INSERT INTO food_data (food_name)
VALUES (orange);

INSERT INTO food_data (food_name)
VALUES (banana);

INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (1, 2, 3, 4);

INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (2, 2, 3, 4);

INSERT INTO food_details (protein, carb, fat, kcal)
VALUES (3, 2, 3, 4);

-- populating exercise items
INSERT INTO exercise_data (excerise_name)
VALUES (pulldown);

INSERT INTO exercise_data (excerise_name)
VALUES (bench press);

INSERT INTO exercise_data (excerise_name)
VALUES (lateral raises);

INSERT INTO exercise_details (muscle_group, equipment, muscle)
VALUES (back, barbell, latimus dorsi);

INSERT INTO exercise_details (muscle_group, equipment, muscle)
VALUES (chest, barbell, pecs);

INSERT INTO exercise_details (muscle_group, equipment, muscle)
VALUES (shoulders, dumbbell, side deltoid);