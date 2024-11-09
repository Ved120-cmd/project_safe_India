import mysql.connector
from mysql.connector import Error

def create_connection():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Ved@2345",
            database="hackathon"
        )
        if connection.is_connected():
            print("Connected to MySQL database")
        return connection
    except Error as e:
        print(f"Error: '{e}'")
        return None

def create_table(connection):
    create_table_query = 
    CREATE TABLE IF NOT EXISTS Persons (
        srno INT PRIMARY KEY,
        name VARCHAR(100),
        gender VARCHAR(10),
        number VARCHAR(15),
        age INT,
        address VARCHAR(255),
        SNP1 VARCHAR(20),
        SNP2 VARCHAR(20),
        SNP3 VARCHAR(20),
        SNP4 VARCHAR(20),
        SNP5 VARCHAR(20)
    );
    
    cursor = connection.cursor()
    cursor.execute(create_table_query)
    connection.commit()
    print("Table created successfully.")

def insert_records(connection, num_records):
    insert_query = 
    INSERT INTO Persons (srno, name, gender, number, age, address, SNP1, SNP2, SNP3, SNP4, SNP5) 
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    
    cursor = connection.cursor()
    for i in range(num_records):
        print(f"\nEntering data for record {i+1}")
        srno = int(input("Enter Serial Number (srno): "))
        name = input("Enter Name: ")
        gender = input("Enter Gender (Male/Female): ")
        number = input("Enter Phone Number: ")
        age = int(input("Enter Age: "))
        address = input("Enter Address: ")
        snp1 = input("Enter SNP1: ")
        snp2 = input("Enter SNP2: ")
        snp3 = input("Enter SNP3: ")
        snp4 = input("Enter SNP4: ")
        snp5 = input("Enter SNP5: ")
        record_data = (srno, name, gender, number, age, address, snp1, snp2, snp3, snp4, snp5)
        cursor.execute(insert_query, record_data)
    connection.commit()
    print(f"\n{num_records} records inserted successfully.")

def find_records(connection):
    snp1 = input("Enter SNP1: ")
    snp2 = input("Enter SNP2: ")
    snp3 = input("Enter SNP3: ")
    snp4 = input("Enter SNP4: ")
    snp5 = input("Enter SNP5: ")
    select_query = 
    SELECT * FROM Persons 
    WHERE SNP1 = %s AND SNP2 = %s AND SNP3 = %s AND SNP4 = %s AND SNP5 = %s
    
    cursor = connection.cursor()
    cursor.execute(select_query, (snp1, snp2, snp3, snp4, snp5))
    records = cursor.fetchall()
    if records:
        print("\nMatching records found:")
        for record in records:
            print(record)
    else:
        print("\nNo matching records found.")

def main():
    connection = create_connection()
    if connection:
        create_table(connection)
        num_records = int(input("Enter the number of records you want to input: "))
        insert_records(connection, num_records)
        find_records(connection)
        connection.close()

if _name_ == "_main_":
    main()