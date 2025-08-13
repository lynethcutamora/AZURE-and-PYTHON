import pyodbc

# Connection string to SQL Server
connection_string = (
    "Driver={ODBC Driver 17 for SQL Server};"
    "Server=NAVISION;"
    "Database=ServiceMax_Export;"
    "Uid=SFSMIntegration;"
    "Pwd=SFSM1ntegrat10n;"
)

# Connect to the database
conn = pyodbc.connect(connection_string)

# Create a cursor
cursor = conn.cursor()

# Write your SQL query
sql_query = "SELECT column1, column2 FROM your_table WHERE condition;"

# Execute the query
cursor.execute(sql_query)

# Fetch results
rows = cursor.fetchall()

# Print the results
for row in rows:
    print(row)

# Close the connection
cursor.close()
conn.close()