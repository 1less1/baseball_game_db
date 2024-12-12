# baseball_game_db
Final project for CS3140. Tasked with creating a medium sized relational database with a python frontend to query and edit the db. Took it upon myself to turn this project into a fun little game where the user is tasked with managing a professional baseball team in my fantasy league of 20 teams!

**CoPilot** is superior to *ChatGPT*. Like gah damn it can randomize like a pro!!!

Clone the REPO with: https://github.com/1less1/baseball_game_db.git

## Order to Insert Base Data
1. **Countries**
2. **Position**
3. **Stadium**
4. **Team**
5. **Coach**
6. **Player**
7. **Ratings**
8. **Season**
9. **Game**
10. **GameStats** 

**Bold** indicates I have working insert data sql script!

Plan to complete assignment:
- Have the "Create a Team" option take the user on a path to insert and delete sql statements
- Have the "Manage a Team" option take the user on a path to insert and delete sql statements

Team Screen 
- Query to display all teams
- Query to sort teams by overall (this will involve a join query most likely)
- Query to show team records for a season of the user's choice!

Players Screen
- Query to pick a team (index) and show players on that roster
- Player search (user input). The query will take the start of what the user typed and add a wildcard
- Query to pick an actual player and see their profile -> that screen will then prompt the user to go back or choose to look at ratings or game stats!

Coaches Screen
- Query to display all coaches with their respective teams
- Query to sort coaCHES by "Motivator" attribute


## SQL Query Tracker
- 4 Read Only Queries:  
    1. One query must be a basic SELECT/FROM/WHERE query  
    2. One query must answer a question that needs to join 2 or more tables  
    3. One query must have a subquery  
    4. One query must have an aggregate function and GROUP BY clause   
  
- 4 Modification Queries:   
    1. One query must add a record to one or more tables.  
    2. One query must delete a record from one or more tables.     
    3. You have foreign key ON UPDATE constraints that make sense on a table/tables and write an SQL query to demonstrate how one of them works.   
    4. You have foreign key ON DELETE constraints that make sense on a table/tables and write an SQL query to demonstrate how one of them works.      

## Python Query Tracker
- 2 Read Only Queries (accepts user input)  
    - Level 2 Query -> select_team_data() function

- 2 Modification Queries (accepts user input)  
    - Level 2 Query ->
