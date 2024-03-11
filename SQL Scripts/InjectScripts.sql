-- Load data into Users table
LOAD DATA INFILE 'C:\Users\micha\OneDrive\Documents\GitHub\SP24DB_Project\SQL Scripts\users.csv'
INTO TABLE Users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load data into DietPlans and Meals tables
LOAD DATA INFILE '/diet_meals.csv'
INTO TABLE DietPlans
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

-- Load data into Foods table
LOAD DATA INFILE '/foods.csv'
INTO TABLE Foods
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

-- Load data into WorkoutPlans and Exercises tables
LOAD DATA INFILE '/workout_exercises.csv'
INTO TABLE WorkoutPlans
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load data into Cardio table
LOAD DATA INFILE '/cardio.csv'
INTO TABLE Cardio
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 