import sqlite3
def fetch_data_and_store(database_file, table_name, output_file):
    try:
        # Connect to the database
        connection = sqlite3.connect(database_file)
        # Create a cursor to interact with the database
        cursor = connection.cursor()
        # Execute a SELECT query to fetch data from the table
        query = f"SELECT * FROM {table_name};"
        cursor.execute(query)
        # Fetch all rows from the result set
        rows = cursor.fetchall()
        # Print the data to the screen
        print("Data from the database:")
        for row in rows:
            print(row)
        # Store the data in a text file
        with open(output_file, 'w') as file:
            for row in rows:
                file.write(str(row) + '\n')
        print(f"\nData has been stored in {output_file}")
    except sqlite3.Error as e:
        print(f"SQLite error: {e}")
    finally:
        # Close the connection
        if connection:
            connection.close()

# Replace placeholders and output the file
database_file = 'your_database.db'
table_name = 'your_table'
output_file = 'output.txt'

# Call the function to fetch data and store it
fetch_data_and_store(database_file, table_name, output_file)