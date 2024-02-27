-- Table to store information about users
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(255) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Weight FLOAT,
    Height FLOAT
);

-- Table to store information about diet plans
CREATE TABLE DietPlans (
    DietPlanID INT PRIMARY KEY,
    UserID INT,
    PlanName VARCHAR(255) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Table to store details of individual meals in a diet plan
CREATE TABLE Meals (
    MealID INT PRIMARY KEY,
    DietPlanID INT,
    MealName VARCHAR(255) NOT NULL,
    Calories INT,
    Proteins FLOAT,
    Carbohydrates FLOAT,
    Fats FLOAT,
    FOREIGN KEY (DietPlanID) REFERENCES DietPlans(DietPlanID)
);

-- Table to store information about food items
CREATE TABLE Foods (
    FoodID INT PRIMARY KEY,
    FoodName VARCHAR(255) NOT NULL,
    Calories INT,
    Proteins FLOAT,
    Carbohydrates FLOAT,
    Fats FLOAT
);

-- Table to store the relationship between meals and food items
CREATE TABLE MealFoods (
    MealFoodID INT PRIMARY KEY,
    MealID INT,
    FoodID INT,
    Quantity INT,
    FOREIGN KEY (MealID) REFERENCES Meals(MealID),
    FOREIGN KEY (FoodID) REFERENCES Foods(FoodID)
);

-- Table to store information about workout plans
CREATE TABLE WorkoutPlans (
    WorkoutPlanID INT PRIMARY KEY,
    UserID INT,
    PlanName VARCHAR(255) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Table to store details of individual exercises in a workout plan
CREATE TABLE Exercises (
    ExerciseID INT PRIMARY KEY,
    WorkoutPlanID INT,
    ExerciseName VARCHAR(255) NOT NULL,
    DurationMinutes INT,
    CaloriesBurned INT,
    FOREIGN KEY (WorkoutPlanID) REFERENCES WorkoutPlans(WorkoutPlanID)
);

-- Table to store information about exercise types
CREATE TABLE ExerciseTypes (
    ExerciseTypeID INT PRIMARY KEY,
    TypeName VARCHAR(255) NOT NULL
);

-- Table to store the relationship between exercises and exercise types
CREATE TABLE ExerciseTypeMapping (
    ExerciseTypeMappingID INT PRIMARY KEY,
    ExerciseID INT,
    ExerciseTypeID INT,
    FOREIGN KEY (ExerciseID) REFERENCES Exercises(ExerciseID),
    FOREIGN KEY (ExerciseTypeID) REFERENCES ExerciseTypes(ExerciseTypeID)
);