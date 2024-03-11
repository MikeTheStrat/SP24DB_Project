-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-03-11 03:23:23.738

-- tables
-- Table: Cardio
CREATE TABLE Cardio (
    CardioID int  NOT NULL,
    CaloriesBurned int  NOT NULL,
    DurationMinutes int  NOT NULL,
    ExerciseID int  NOT NULL,
    CONSTRAINT Cardio_pk PRIMARY KEY (CardioID)
);

-- Table: DietPlans
CREATE TABLE DietPlans (
    DietPlanID int  NOT NULL AUTO_INCREMENT,
    StartDate date  NOT NULL,
    EndDate date  NOT NULL,
    UserID int  NOT NULL,
    PlanName varchar(255)  NOT NULL,
    CONSTRAINT DietPlans_pk PRIMARY KEY (DietPlanID)
);

-- Table: Exercises
CREATE TABLE Exercises (
    ExerciseID int  NOT NULL AUTO_INCREMENT,
    WorkoutPlanID int  NOT NULL,
    ExerciseName varchar(255)  NOT NULL,
    CONSTRAINT Exercises_pk PRIMARY KEY (ExerciseID)
);

-- Table: Foods
CREATE TABLE Foods (
    FoodID int  NOT NULL AUTO_INCREMENT,
    FoodName varchar(255)  NOT NULL,
    Calories int  NOT NULL,
    Proteins float  NOT NULL,
    Carbohydrates float  NOT NULL,
    Fats float  NOT NULL,
    CONSTRAINT Foods_pk PRIMARY KEY (FoodID)
);

-- Table: MealFoodBridge
CREATE TABLE MealFoodBridge (
    MealFoodBridgeID int  NOT NULL AUTO_INCREMENT,
    MealID int  NOT NULL,
    FoodID int  NOT NULL,
    Quantity int  NOT NULL,
    CONSTRAINT MealFoodBridge_pk PRIMARY KEY (MealFoodBridgeID)
);

-- Table: Meals
CREATE TABLE Meals (
    MealID int  NOT NULL AUTO_INCREMENT,
    DietPlanID int  NOT NULL,
    MealName varchar(255)  NOT NULL,
    Calories int  NOT NULL,
    Proteins float  NOT NULL,
    Carbohydrates float  NOT NULL,
    Fats float  NOT NULL,
    CONSTRAINT Meals_pk PRIMARY KEY (MealID)
);

-- Table: Users
CREATE TABLE Users (
    UserID int  NOT NULL AUTO_INCREMENT,
    Age int  NOT NULL,
    Gender varchar(10)  NOT NULL,
    Weight float  NOT NULL,
    Height float  NOT NULL,
    CONSTRAINT UserID PRIMARY KEY (UserID)
);

-- Table: WorkoutPlans
CREATE TABLE WorkoutPlans (
    WorkoutPlanID int  NOT NULL AUTO_INCREMENT,
    UserID int  NOT NULL,
    PlanName varchar(255)  NOT NULL,
    StartDate date  NOT NULL,
    EndDate date  NOT NULL,
    CONSTRAINT WorkoutPlans_pk PRIMARY KEY (WorkoutPlanID)
);

-- foreign keys
-- Reference: CaloriesBurned_Exercises (table: Cardio)
ALTER TABLE Cardio ADD CONSTRAINT CaloriesBurned_Exercises FOREIGN KEY CaloriesBurned_Exercises (ExerciseID)
    REFERENCES Exercises (ExerciseID);

-- Reference: DietPlans_Meals (table: Meals)
ALTER TABLE Meals ADD CONSTRAINT DietPlans_Meals FOREIGN KEY DietPlans_Meals (DietPlanID)
    REFERENCES DietPlans (DietPlanID);

-- Reference: Exercises_WorkoutPlans (table: Exercises)
ALTER TABLE Exercises ADD CONSTRAINT Exercises_WorkoutPlans FOREIGN KEY Exercises_WorkoutPlans (WorkoutPlanID)
    REFERENCES WorkoutPlans (WorkoutPlanID);

-- Reference: MealFoodBridge_Foods (table: MealFoodBridge)
ALTER TABLE MealFoodBridge ADD CONSTRAINT MealFoodBridge_Foods FOREIGN KEY MealFoodBridge_Foods (FoodID)
    REFERENCES Foods (FoodID);

-- Reference: Meals_MealFoodBridge (table: MealFoodBridge)
ALTER TABLE MealFoodBridge ADD CONSTRAINT Meals_MealFoodBridge FOREIGN KEY Meals_MealFoodBridge (MealID)
    REFERENCES Meals (MealID);

-- Reference: Users_DietPlans (table: DietPlans)
ALTER TABLE DietPlans ADD CONSTRAINT Users_DietPlans FOREIGN KEY Users_DietPlans (UserID)
    REFERENCES Users (UserID);

-- Reference: Users_WorkoutPlans (table: WorkoutPlans)
ALTER TABLE WorkoutPlans ADD CONSTRAINT Users_WorkoutPlans FOREIGN KEY Users_WorkoutPlans (UserID)
    REFERENCES Users (UserID);

-- End of file.