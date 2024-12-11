import mysql.connector as mysql

# Contains all of the queries I will be calling!

def get_all_teams(db):
    cursor = db.cursor()
    query = "SELECT * FROM Team"
    cursor.execute(query)
    records = cursor.fetchall()
    for record in records:
        print("Team " + str(record[0]) + ": ", record[2], record[1], "- League: "+ str(record[3]))
    print()
    cursor.close()
    return None