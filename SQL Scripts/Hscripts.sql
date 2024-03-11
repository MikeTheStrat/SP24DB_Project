-- INSERT statements
INSERT INTO Users (UserID, UserName, Age, Gender, Weight, Height) VALUES
(5, 'Emma Johnson', 35, 'F', 62.0, 165.0),
(6, 'Michael Smith', 45, 'M', 78.5, 178.2);

INSERT INTO Foods (FoodID, FoodName, Calories, Proteins, Carbohydrates, Fats) VALUES
(9, 'Greek Yogurt', 120, 15.0, 10.0, 2.0),
(10, 'Mixed Nuts', 200, 8.0, 6.0, 16.0);

-- UPDATE statements
UPDATE DietPlans SET EndDate = '2024-03-31' WHERE DietPlanID = 1;
UPDATE Exercises SET DurationMinutes = 40 WHERE ExerciseID = 3;

-- DELETE statement
DELETE FROM Cardio WHERE CardioID = 2;

-- Simple SELECT statement
SELECT UserID, UserName, Age FROM Users WHERE Gender = 'F';

-- JOIN statements
SELECT Users.UserName, DietPlans.PlanName
FROM Users
JOIN DietPlans ON Users.UserID = DietPlans.UserID;

SELECT Meals.MealName, Foods.FoodName
FROM Meals
JOIN MealFoods ON Meals.MealID = MealFoods.MealID
JOIN Foods ON MealFoods.FoodID = Foods.FoodID;

-- Summary statements
SELECT Gender, AVG(Weight) AS AverageWeight
FROM Users
GROUP BY Gender;

SELECT PlanName, COUNT(WorkoutPlanID) AS ExerciseCount
FROM WorkoutPlans
JOIN Exercises ON WorkoutPlans.WorkoutPlanID = Exercises.WorkoutPlanID
GROUP BY PlanName;

-- Multi-table query
SELECT Users.UserName, DietPlans.PlanName, Meals.MealName, Foods.FoodName
FROM Users
JOIN DietPlans ON Users.UserID = DietPlans.UserID
JOIN Meals ON DietPlans.DietPlanID = Meals.DietPlanID
JOIN MealFoods ON Meals.MealID = MealFoods.MealID
JOIN Foods ON MealFoods.FoodID = Foods.FoodID;

-- My choice
INSERT INTO Exercises (ExerciseID, WorkoutPlanID, ExerciseName, DurationMinutes, CaloriesBurned)
VALUES (9, 2, 'Circuit Training', 50, 300);