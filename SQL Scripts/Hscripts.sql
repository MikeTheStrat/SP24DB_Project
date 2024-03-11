-- INSERT statements
INSERT INTO Users (UserID,  Age, Gender, Weight, Height) VALUES
(5, 35, 'F', 62.0, 165.0),
(6, 45, 'M', 78.5, 178.2);

INSERT INTO Foods (FoodID, FoodName, Calories, Proteins, Carbohydrates, Fats) VALUES
(9, 'Greek Yogurt', 120, 15.0, 10.0, 2.0),
(10, 'Mixed Nuts', 200, 8.0, 6.0, 16.0);

-- UPDATE statements
UPDATE Foods SET Calories = 100 WHERE foodID = 1;
UPDATE Foods SET Calories = 100 WHERE foodID = 3;

-- DELETE statement
DELETE FROM Cardio WHERE CardioID = 2;

-- Simple SELECT statement
SELECT UserID, Age FROM Users WHERE Gender = 'F';

-- JOIN statements
SELECT Foods.*, Users.Gender
FROM Foods
INNER JOIN Users ON FoodID = Users.UserID;

SELECT Foods.*, Users.Gender
FROM Foods
LEFT JOIN Users ON FoodID = Users.UserID;

-- Summary statements
SELECT Gender, AVG(Weight) AS AverageWeight
FROM Users
GROUP BY Gender;

SELECT Gender, AVG(Height) AS AverageHeight
FROM Users
GROUP BY Gender;

-- Multi-table query
SELECT Users.Gender, DietPlans.PlanName
FROM Users
JOIN DietPlans ON Users.UserID = DietPlans.UserID

-- My choice
INSERT INTO Foods (FoodID, FoodName, Calories, Proteins, Carbohydrates, Fats) VALUES
(11, 'Apple', 70, 15.0, 10.0, 2.0);